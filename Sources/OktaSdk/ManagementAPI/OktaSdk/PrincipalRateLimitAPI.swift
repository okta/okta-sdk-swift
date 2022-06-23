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

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public extension OktaClient {

    struct PrincipalRateLimitAPI: OktaClientAPI {
        internal let context: OktaClient.APIContext

        /**
         Create a Principal Rate Limit
         
         - parameter entity: (body)  
         */
        public func createPrincipalRateLimitEntity(entity: PrincipalRateLimitEntity) async throws -> OktaResponse<PrincipalRateLimitEntity> {
            try await send(try requestWithBody(to: "/api/v1/principal-rate-limits", method: "POST", body: entity))
        }

        /**
         Retrieve a Principal Rate Limit
         
         - parameter principalRateLimitId: (path) id of the Principal Rate Limit 
         */
        public func getPrincipalRateLimitEntity(principalRateLimitId: String) async throws -> OktaResponse<PrincipalRateLimitEntity> {
            try await send(try request(to: "/api/v1/principal-rate-limits/{principalRateLimitId}".expanded(using: [
                    "principalRateLimitId": principalRateLimitId
                ]), method: "GET"))
        }

        /**
         List all Principal Rate Limits
         
         - parameter filter: (query)  (optional)
         - parameter after: (query)  (optional)
         - parameter limit: (query)  (optional, default to 20)
         */
        public func listPrincipalRateLimitEntities(filter: String? = nil, after: String? = nil, limit: Int? = nil) async throws -> OktaResponse<[PrincipalRateLimitEntity]> {
            try await send(try request(to: "/api/v1/principal-rate-limits", method: "GET", query: [
                    "filter": filter, 
                    "after": after, 
                    "limit": limit
                ]))
        }

        /**
         Replace a Principal Rate Limit
         
         - parameter principalRateLimitId: (path) id of the Principal Rate Limit 
         - parameter entity: (body)  
         */
        public func updatePrincipalRateLimitEntity(principalRateLimitId: String, entity: PrincipalRateLimitEntity) async throws -> OktaResponse<PrincipalRateLimitEntity> {
            try await send(try requestWithBody(to: "/api/v1/principal-rate-limits/{principalRateLimitId}".expanded(using: [
                    "principalRateLimitId": principalRateLimitId
                ]), method: "PUT", body: entity))
        }

    }
}
