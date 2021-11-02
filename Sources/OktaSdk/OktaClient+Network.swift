//
// Copyright (c) 2021-Present, Okta, Inc. and/or its affiliates. All rights reserved.
// The Okta software accompanied by this notice is provided pursuant to the Apache License, Version 2.0 (the "License.")
//
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0.
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//
// See the License for the specific language governing permissions and limitations under the License.
//

import Foundation

#if canImport(Combine)
import Combine
import AnyCodable
#endif

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

protocol OktaClientArgument {
    var stringValue: String { get }
}

extension String: OktaClientArgument {
    var stringValue: String { self }
}

extension Int: OktaClientArgument {
    var stringValue: String { "\(self)"}
}

extension Double: OktaClientArgument {
    var stringValue: String { "\(self)"}
}

extension Bool: OktaClientArgument {
    var stringValue: String { "\(self)"}
}

extension Date: OktaClientArgument {
    var stringValue: String {
        CodableHelper.dateFormatter.string(from: self)
    }
}

internal protocol OktaClientAPI {
    var baseURL: URL { get }
    var urlSession: URLSession { get }

    func request(to path: String,
                 method: String,
                 query: [String:OktaClientArgument?]?,
                 headers: [String:OktaClientArgument?]?) throws -> URLRequest
    func request<T: Encodable>(to path: String,
                               method: String,
                               query: [String:OktaClientArgument?]?,
                               headers: [String:OktaClientArgument?]?,
                               body: T?) throws -> URLRequest
    func send<T: Decodable>(_ request: URLRequest, completion: @escaping (Result<OktaResponse<T>, Error>) -> Void)

    #if swift(>=5.5.1)
    @available(iOS 15.0, macOS 12.0, *)
    func send<T: Decodable>(_ request: URLRequest) async throws -> OktaResponse<T>
    #endif
    
    #if canImport(Combine)
    @available(iOS 13.0, macOS 10.15, *)
    func publish<T: Decodable>(_ request: URLRequest) -> AnyPublisher<OktaResponse<T>, Error>
    #endif
}

private let linkRegex = try? NSRegularExpression(pattern: "<([^>]+)>; rel=\"([^\"]+)\"", options: [])
extension OktaClientAPI {
    private func validate<T: Decodable>(_ data: Data, _ response: URLResponse) throws -> OktaResponse<T> {
        guard let httpResponse = response as? HTTPURLResponse else {
            throw OktaClientError.invalidResponse
        }
        guard (200..<300).contains(httpResponse.statusCode) else {
            throw OktaClientError.statusCode(httpResponse.statusCode)
        }
        
        var links: [OktaResponse<T>.Link:URL] = [:]
        if let linkHeader = httpResponse.allHeaderFields["Link"] as? String,
           let matches = linkRegex?.matches(in: linkHeader, options: [], range: NSMakeRange(0, linkHeader.count))
        {
            for match in matches {
                guard let urlRange = Range(match.range(at: 1), in: linkHeader),
                      let url = URL(string: String(linkHeader[urlRange])),
                      let keyRange = Range(match.range(at: 2), in: linkHeader),
                      let key = OktaResponse<T>.Link(rawValue: String(linkHeader[keyRange]))
                else {
                    continue
                }
                
                links[key] = url
            }
        }
                
        return OktaResponse(result: try CodableHelper.jsonDecoder.decode(T.self, from: data),
                            links: links,
                            rateInfo: OktaResponse.RateLimit(with: httpResponse.allHeaderFields),
                            requestId: httpResponse.allHeaderFields["x-okta-request-id"] as? String)
    }

    func request(to path: String,
                 method: String,
                 query: [String:OktaClientArgument?]? = nil,
                 headers: [String:OktaClientArgument?]? = nil) throws -> URLRequest
    {
        guard let url = URL(string: path, relativeTo: baseURL) else {
            throw OktaClientError.invalidUrl
        }
        
        var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: true)
        urlComponents?.queryItems = query?
            .map { ($0.key, $0.value?.stringValue) }
            .filter { $0.1 != nil }
            .map { URLQueryItem(name: $0.0, value: $0.1) }
            .sorted(by: { $0.name < $1.name })
        
        guard let requestUrl = urlComponents?.url else {
            throw OktaClientError.invalidUrl
        }
        
        var request = URLRequest(url: requestUrl)
        request.httpMethod = method
        
        headers?.forEach { (key, value) in
            guard let value = value?.stringValue else { return }
            request.setValue(value, forHTTPHeaderField: key)
        }
        
        return request
    }

    func request<T: Encodable>(to path: String,
                               method: String = "GET",
                               query: [String:OktaClientArgument?]? = nil,
                               headers: [String:OktaClientArgument?]? = nil,
                               body: T?) throws -> URLRequest
    {
        var result = try request(to: path, method: method, query: query, headers: headers)
        if let body = body {
            result.httpBody = try CodableHelper.jsonEncoder.encode(body)
        }
        return result
    }

    func send<T: Decodable>(_ request: URLRequest, completion: @escaping (Result<OktaResponse<T>, Error>) -> Void) {
        urlSession.dataTask(with: request) { data, response, error in
            guard let data = data,
                  let response = response
            else {
                completion(.failure(error ?? OktaClientError.unknown))
                return
            }

            do {
                try completion(.success(self.validate(data, response)))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }

    #if swift(>=5.5.1)
    @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
    func send<T: Decodable>(_ request: URLRequest) async throws -> OktaResponse<T> {
        let (data, response) = try await urlSession.data(for: request)
        return try validate(data, response)
    }
    #endif
    
    #if canImport(Combine)
    @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
    func publish<T: Decodable>(_ request: URLRequest) -> AnyPublisher<OktaResponse<T>, Error> {
        urlSession.dataTaskPublisher(for: request)
            .tryMap {
                try self.validate($0.data, $0.response)
            }
            .eraseToAnyPublisher()
    }
    #endif
}
