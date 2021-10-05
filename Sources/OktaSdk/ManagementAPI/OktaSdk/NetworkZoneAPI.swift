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

    struct NetworkZoneAPI: OktaClientAPI {
        internal let baseURL: URL
        internal let session: URLSession


        internal func activateNetworkZoneURLRequest(zoneId: String) throws -> URLRequest {
            try request(to: "/api/v1/zones/{zoneId}/lifecycle/activate".expanded(using: [
                "zoneId": zoneId
            ]), method: "POST")
        }

        /**
         Activate Network Zone
         
         - parameter zoneId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func activateNetworkZone(zoneId: String, completion: @escaping (Result<OktaResponse<NetworkZone>, Error>) -> Void) {
            do {
                send(try activateNetworkZoneURLRequest(zoneId: zoneId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Activate Network Zone
         
         - parameter zoneId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func activateNetworkZoneAsync(zoneId: String) async throws -> OktaResponse<NetworkZone> {
            try await send(try activateNetworkZoneURLRequest(zoneId: zoneId))
        }

        #if canImport(Combine)
        /**
         Activate Network Zone
         
         - parameter zoneId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func activateNetworkZone(zoneId: String) throws -> AnyPublisher<OktaResponse<NetworkZone>, Error> {
            publish(try activateNetworkZoneURLRequest(zoneId: zoneId))
        }
        #endif


        internal func createNetworkZoneURLRequest(networkZone: NetworkZone) throws -> URLRequest {
            try request(to: "/api/v1/zones", method: "POST", body: networkZone)
        }

        /**
         Add Network Zone
         
         - parameter networkZone: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func createNetworkZone(networkZone: NetworkZone, completion: @escaping (Result<OktaResponse<NetworkZone>, Error>) -> Void) {
            do {
                send(try createNetworkZoneURLRequest(networkZone: networkZone), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Add Network Zone
         
         - parameter networkZone: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func createNetworkZoneAsync(networkZone: NetworkZone) async throws -> OktaResponse<NetworkZone> {
            try await send(try createNetworkZoneURLRequest(networkZone: networkZone))
        }

        #if canImport(Combine)
        /**
         Add Network Zone
         
         - parameter networkZone: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func createNetworkZone(networkZone: NetworkZone) throws -> AnyPublisher<OktaResponse<NetworkZone>, Error> {
            publish(try createNetworkZoneURLRequest(networkZone: networkZone))
        }
        #endif


        internal func deactivateNetworkZoneURLRequest(zoneId: String) throws -> URLRequest {
            try request(to: "/api/v1/zones/{zoneId}/lifecycle/deactivate".expanded(using: [
                "zoneId": zoneId
            ]), method: "POST")
        }

        /**
         Deactivate Network Zone
         
         - parameter zoneId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func deactivateNetworkZone(zoneId: String, completion: @escaping (Result<OktaResponse<NetworkZone>, Error>) -> Void) {
            do {
                send(try deactivateNetworkZoneURLRequest(zoneId: zoneId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Deactivate Network Zone
         
         - parameter zoneId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func deactivateNetworkZoneAsync(zoneId: String) async throws -> OktaResponse<NetworkZone> {
            try await send(try deactivateNetworkZoneURLRequest(zoneId: zoneId))
        }

        #if canImport(Combine)
        /**
         Deactivate Network Zone
         
         - parameter zoneId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func deactivateNetworkZone(zoneId: String) throws -> AnyPublisher<OktaResponse<NetworkZone>, Error> {
            publish(try deactivateNetworkZoneURLRequest(zoneId: zoneId))
        }
        #endif


        internal func deleteNetworkZoneURLRequest(zoneId: String) throws -> URLRequest {
            try request(to: "/api/v1/zones/{zoneId}".expanded(using: [
                "zoneId": zoneId
            ]), method: "DELETE")
        }

        /**
         Delete Network Zone
         
         - parameter zoneId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func deleteNetworkZone(zoneId: String, completion: @escaping (Result<OktaResponse<Empty>, Error>) -> Void) {
            do {
                send(try deleteNetworkZoneURLRequest(zoneId: zoneId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Delete Network Zone
         
         - parameter zoneId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func deleteNetworkZoneAsync(zoneId: String) async throws -> OktaResponse<Empty> {
            try await send(try deleteNetworkZoneURLRequest(zoneId: zoneId))
        }

        #if canImport(Combine)
        /**
         Delete Network Zone
         
         - parameter zoneId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func deleteNetworkZone(zoneId: String) throws -> AnyPublisher<OktaResponse<Empty>, Error> {
            publish(try deleteNetworkZoneURLRequest(zoneId: zoneId))
        }
        #endif


        internal func getNetworkZoneURLRequest(zoneId: String) throws -> URLRequest {
            try request(to: "/api/v1/zones/{zoneId}".expanded(using: [
                "zoneId": zoneId
            ]), method: "GET")
        }

        /**
         Get Network Zone
         
         - parameter zoneId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getNetworkZone(zoneId: String, completion: @escaping (Result<OktaResponse<NetworkZone>, Error>) -> Void) {
            do {
                send(try getNetworkZoneURLRequest(zoneId: zoneId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Get Network Zone
         
         - parameter zoneId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getNetworkZoneAsync(zoneId: String) async throws -> OktaResponse<NetworkZone> {
            try await send(try getNetworkZoneURLRequest(zoneId: zoneId))
        }

        #if canImport(Combine)
        /**
         Get Network Zone
         
         - parameter zoneId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getNetworkZone(zoneId: String) throws -> AnyPublisher<OktaResponse<NetworkZone>, Error> {
            publish(try getNetworkZoneURLRequest(zoneId: zoneId))
        }
        #endif


        internal func listNetworkZonesURLRequest(after: String? = nil, limit: Int? = nil, filter: String? = nil) throws -> URLRequest {
            try request(to: "/api/v1/zones", method: "GET", query: [
                "after": after, 
                "limit": limit, 
                "filter": filter
            ])
        }

        /**
         List Network Zones
         
         - parameter after: (query) Specifies the pagination cursor for the next page of network zones (optional)
         - parameter limit: (query) Specifies the number of results for a page (optional, default to -1)
         - parameter filter: (query) Filters zones by usage or id expression (optional)
         - parameter completion: completion handler to receive the data and the error objects
         */
        func listNetworkZones(after: String? = nil, limit: Int? = nil, filter: String? = nil, completion: @escaping (Result<OktaResponse<[NetworkZone]>, Error>) -> Void) {
            do {
                send(try listNetworkZonesURLRequest(after: after, limit: limit, filter: filter), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         List Network Zones
         
         - parameter after: (query) Specifies the pagination cursor for the next page of network zones (optional)
         - parameter limit: (query) Specifies the number of results for a page (optional, default to -1)
         - parameter filter: (query) Filters zones by usage or id expression (optional)
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func listNetworkZonesAsync(after: String? = nil, limit: Int? = nil, filter: String? = nil) async throws -> OktaResponse<[NetworkZone]> {
            try await send(try listNetworkZonesURLRequest(after: after, limit: limit, filter: filter))
        }

        #if canImport(Combine)
        /**
         List Network Zones
         
         - parameter after: (query) Specifies the pagination cursor for the next page of network zones (optional)
         - parameter limit: (query) Specifies the number of results for a page (optional, default to -1)
         - parameter filter: (query) Filters zones by usage or id expression (optional)
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func listNetworkZones(after: String? = nil, limit: Int? = nil, filter: String? = nil) throws -> AnyPublisher<OktaResponse<[NetworkZone]>, Error> {
            publish(try listNetworkZonesURLRequest(after: after, limit: limit, filter: filter))
        }
        #endif


        internal func updateNetworkZoneURLRequest(zoneId: String, networkZone: NetworkZone) throws -> URLRequest {
            try request(to: "/api/v1/zones/{zoneId}".expanded(using: [
                "zoneId": zoneId
            ]), method: "PUT", body: networkZone)
        }

        /**
         Update Network Zone
         
         - parameter zoneId: (path)  
         - parameter networkZone: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func updateNetworkZone(zoneId: String, networkZone: NetworkZone, completion: @escaping (Result<OktaResponse<NetworkZone>, Error>) -> Void) {
            do {
                send(try updateNetworkZoneURLRequest(zoneId: zoneId, networkZone: networkZone), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Update Network Zone
         
         - parameter zoneId: (path)  
         - parameter networkZone: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func updateNetworkZoneAsync(zoneId: String, networkZone: NetworkZone) async throws -> OktaResponse<NetworkZone> {
            try await send(try updateNetworkZoneURLRequest(zoneId: zoneId, networkZone: networkZone))
        }

        #if canImport(Combine)
        /**
         Update Network Zone
         
         - parameter zoneId: (path)  
         - parameter networkZone: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func updateNetworkZone(zoneId: String, networkZone: NetworkZone) throws -> AnyPublisher<OktaResponse<NetworkZone>, Error> {
            publish(try updateNetworkZoneURLRequest(zoneId: zoneId, networkZone: networkZone))
        }
        #endif

    }
}