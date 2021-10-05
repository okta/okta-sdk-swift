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
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

#if canImport(Combine)
import Combine
#endif

public extension OktaClient {

    struct LogAPI: OktaClientAPI {
        internal let baseURL: URL
        internal let session: URLSession


        internal func getLogsURLRequest(since: Date? = nil, until: Date? = nil, filter: String? = nil, q: String? = nil, limit: Int? = nil, sortOrder: String? = nil, after: String? = nil) throws -> URLRequest {
            try request(to: "/api/v1/logs", method: "GET", query: [
                "since": since, 
                "until": until, 
                "filter": filter, 
                "q": q, 
                "limit": limit, 
                "sortOrder": sortOrder, 
                "after": after
            ])
        }

        /**
         Fetch a list of events from your Okta organization system log.
         
         - parameter since: (query)  (optional)
         - parameter until: (query)  (optional)
         - parameter filter: (query)  (optional)
         - parameter q: (query)  (optional)
         - parameter limit: (query)  (optional, default to 100)
         - parameter sortOrder: (query)  (optional, default to "ASCENDING")
         - parameter after: (query)  (optional)
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getLogs(since: Date? = nil, until: Date? = nil, filter: String? = nil, q: String? = nil, limit: Int? = nil, sortOrder: String? = nil, after: String? = nil, completion: @escaping (Result<OktaResponse<[LogEvent]>, Error>) -> Void) {
            do {
                send(try getLogsURLRequest(since: since, until: until, filter: filter, q: q, limit: limit, sortOrder: sortOrder, after: after), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Fetch a list of events from your Okta organization system log.
         
         - parameter since: (query)  (optional)
         - parameter until: (query)  (optional)
         - parameter filter: (query)  (optional)
         - parameter q: (query)  (optional)
         - parameter limit: (query)  (optional, default to 100)
         - parameter sortOrder: (query)  (optional, default to "ASCENDING")
         - parameter after: (query)  (optional)
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getLogsAsync(since: Date? = nil, until: Date? = nil, filter: String? = nil, q: String? = nil, limit: Int? = nil, sortOrder: String? = nil, after: String? = nil) async throws -> OktaResponse<[LogEvent]> {
            try await send(try getLogsURLRequest(since: since, until: until, filter: filter, q: q, limit: limit, sortOrder: sortOrder, after: after))
        }

        #if canImport(Combine)
        /**
         Fetch a list of events from your Okta organization system log.
         
         - parameter since: (query)  (optional)
         - parameter until: (query)  (optional)
         - parameter filter: (query)  (optional)
         - parameter q: (query)  (optional)
         - parameter limit: (query)  (optional, default to 100)
         - parameter sortOrder: (query)  (optional, default to "ASCENDING")
         - parameter after: (query)  (optional)
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getLogs(since: Date? = nil, until: Date? = nil, filter: String? = nil, q: String? = nil, limit: Int? = nil, sortOrder: String? = nil, after: String? = nil) throws -> AnyPublisher<OktaResponse<[LogEvent]>, Error> {
            publish(try getLogsURLRequest(since: since, until: until, filter: filter, q: q, limit: limit, sortOrder: sortOrder, after: after))
        }
        #endif

    }
}