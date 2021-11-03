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
#endif

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

enum OktaClientError: Error {
    case invalidUrl
    case invalidResponse
    case invalidBody
    case statusCode(_ statusCode: Int)
    case unknown
}

/// The class describing an active client used to interact with an Okta org.
open class OktaClient: OktaClientAPI {
    /// The configuration used with this client.
    public let configuration: Configuration

    internal let queue = OperationQueue()
    internal let urlSession: URLSession
    internal let baseURL: URL

    public lazy var application: OktaClient.ApplicationAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var authenticator: OktaClient.AuthenticatorAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var authorizationServer: OktaClient.AuthorizationServerAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var captcha: OktaClient.CAPTCHAAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var domain: OktaClient.DomainAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var eventHook: OktaClient.EventHookAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var feature: OktaClient.FeatureAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var group: OktaClient.GroupAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var identityProvider: OktaClient.IdentityProviderAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var inlineHook: OktaClient.InlineHookAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var linkedObject: OktaClient.LinkedObjectAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var log: OktaClient.LogAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var networkZone: OktaClient.NetworkZoneAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var policy: OktaClient.PolicyAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var profileMapping: OktaClient.ProfileMappingAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var session: OktaClient.SessionAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var template: OktaClient.TemplateAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var threadInsight: OktaClient.ThreatInsightAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var trustedOrigin: OktaClient.TrustedOriginAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var user: OktaClient.UserAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var userFactor: OktaClient.UserFactorAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var userSchema: OktaClient.UserSchemaAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    public lazy var userType: OktaClient.UserTypeAPI = { .init(baseURL: self.baseURL, urlSession: self.urlSession) }()
    
    /// Initializer for creating an Okta client with the given configuration.
    /// - Parameter configuration: Configuration instance describing how to connect to the desired Okta organization.
    public init(configuration: Configuration) {
        self.configuration = configuration
        self.baseURL = URL(string: "\(configuration.basePath)/api/")!
        
        let sessionConfiguration = URLSessionConfiguration.ephemeral
        sessionConfiguration.httpAdditionalHeaders = configuration.customHeaders
        urlSession = URLSession(configuration: sessionConfiguration, delegate: nil, delegateQueue: queue)
    }
    
    internal func fetchURLRequest<T>(_ link: OktaResponse<T>.Link, from response: OktaResponse<T>) throws -> URLRequest {
        guard let url = response.links[link] else {
            throw OktaClientError.invalidUrl
        }

        return URLRequest(url: url)
    }
    
    /// Fetches the related pagination link from the given response.
    public func fetch<T>(_ link: OktaResponse<T>.Link, from response: OktaResponse<T>, completion: @escaping(Result<OktaResponse<T>, Error>) -> Void) {
        do {
            send(try fetchURLRequest(link, from: response), completion: completion)
        } catch {
            completion(.failure(error))
        }
    }
    
    /// Fetches a response of the given type from the supplied URL.
    ///
    /// This may be used to process the `_links` related list from responses.
    public func fetch<T>(_ type: T.Type, at url: URL, completion: @escaping(Result<OktaResponse<T>, Error>) -> Void) where T : Decodable {
        send(URLRequest(url: url), completion: completion)
    }

    #if swift(>=5.5.1) && !os(Linux)
    /// Asynchronously fetches the related pagination link from the given response.
    @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
    public func fetchAsync<T: Decodable>(_ link: OktaResponse<T>.Link, from response: OktaResponse<T>) async throws -> OktaResponse<T> {
        try await send(try fetchURLRequest(link, from: response)) as OktaResponse<T>
    }

    /// Asynchronously fetches a response of the given type from the supplied URL.
    ///
    /// This may be used to process the `_links` related list from responses.
    @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
    public func fetchAsync<T: Decodable>(_ type: T.Type, at url: URL) async throws -> OktaResponse<T> {
        try await send(URLRequest(url: url)) as OktaResponse<T>
    }
    #endif

    #if canImport(Combine)
    /// Fetches the related pagination link from the given response as a Combine publisher.
    @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
    public func fetch<T>(_ link: OktaResponse<T>.Link, from response: OktaResponse<T>) throws -> AnyPublisher<OktaResponse<T>, Error> {
        publish(try fetchURLRequest(link, from: response))
    }

    /// Fetches a response of the given type from the supplied URL as a Combine publisher.
    ///
    /// This may be used to process the `_links` related list from responses.
    @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
    public func fetch<T>(_ type: T.Type, at url: URL) throws -> AnyPublisher<OktaResponse<T>, Error> {
        publish(URLRequest(url: url))
    }
    #endif
}

extension OktaClient {
    /// Describes the configuration for an Okta client.
    public struct Configuration {
        /// The API key for the Okta organization.
        public let apiKey: String
        
        /// The domain name for the desired Okta organization.
        public let domain: String
        
        /// Initializer for creating an Okta configuration
        /// - Parameters:
        ///   - apiKey: The API key for the Okta organization.
        ///   - domain: The domain name for the desired Okta organization.
        public init(apiKey: String, domain: String) {
            self.apiKey = apiKey
            self.domain = domain
        }
        
        internal var basePath: String {
            "https://\(domain)"
        }
        
        internal var customHeaders: [String:String] {
            [
                "Accept": "application/json",
                "Content-Type": "application/json",
                "Authorization": "SSWS \(apiKey)"
            ]
        }
    }
}
