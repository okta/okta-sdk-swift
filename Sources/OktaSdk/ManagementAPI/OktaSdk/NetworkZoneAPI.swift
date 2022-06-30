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

    struct NetworkZoneAPI: OktaClientAPI {
        internal let context: OktaClient.APIContext

        /**
         Activate a Network Zone
         
         - parameter zoneId: (path)  
         */
        public func activateNetworkZone(zoneId: String) async throws -> OktaResponse<NetworkZone> {
            try await send(try request(to: "/api/v1/zones/{zoneId}/lifecycle/activate".expanded(using: [
                    "zoneId": zoneId
                ]), method: "POST"))
        }

        /**
         Create a Network Zone
         
         - parameter zone: (body)  
         */
        public func createNetworkZone(zone: NetworkZone) async throws -> OktaResponse<NetworkZone> {
            try await send(try requestWithBody(to: "/api/v1/zones", method: "POST", body: zone))
        }

        /**
         Deactivate a Network Zone
         
         - parameter zoneId: (path)  
         */
        public func deactivateNetworkZone(zoneId: String) async throws -> OktaResponse<NetworkZone> {
            try await send(try request(to: "/api/v1/zones/{zoneId}/lifecycle/deactivate".expanded(using: [
                    "zoneId": zoneId
                ]), method: "POST"))
        }

        /**
         Delete a Network Zone
         
         - parameter zoneId: (path)  
         */
        @discardableResult
        public func deleteNetworkZone(zoneId: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/zones/{zoneId}".expanded(using: [
                    "zoneId": zoneId
                ]), method: "DELETE"))
        }

        /**
         Retrieve a Network Zone
         
         - parameter zoneId: (path)  
         */
        public func getNetworkZone(zoneId: String) async throws -> OktaResponse<NetworkZone> {
            try await send(try request(to: "/api/v1/zones/{zoneId}".expanded(using: [
                    "zoneId": zoneId
                ]), method: "GET"))
        }

        /**
         List all Network Zones
         
         - parameter after: (query) Specifies the pagination cursor for the next page of network zones (optional)
         - parameter limit: (query) Specifies the number of results for a page (optional, default to -1)
         - parameter filter: (query) Filters zones by usage or id expression (optional)
         */
        public func listNetworkZones(after: String? = nil, limit: Int? = nil, filter: String? = nil) async throws -> OktaResponse<[NetworkZone]> {
            try await send(try request(to: "/api/v1/zones", method: "GET", query: [
                    "after": after, 
                    "limit": limit, 
                    "filter": filter
                ]))
        }

        /**
         Replace a Network Zone
         
         - parameter zoneId: (path)  
         - parameter zone: (body)  
         */
        public func updateNetworkZone(zoneId: String, zone: NetworkZone) async throws -> OktaResponse<NetworkZone> {
            try await send(try requestWithBody(to: "/api/v1/zones/{zoneId}".expanded(using: [
                    "zoneId": zoneId
                ]), method: "PUT", body: zone))
        }

    }
}
