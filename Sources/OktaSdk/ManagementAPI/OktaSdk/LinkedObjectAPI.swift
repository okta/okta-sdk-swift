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

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public extension OktaClient {

    struct LinkedObjectAPI: OktaClientAPI {
        internal let context: OktaClient.APIContext


        internal func addLinkedObjectDefinitionURLRequest(linkedObject: LinkedObject) throws -> URLRequest {
            try request(to: "/api/v1/meta/schemas/user/linkedObjects", method: "POST", body: linkedObject)
        }

        /**

         - parameter linkedObject: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func addLinkedObjectDefinition(linkedObject: LinkedObject, completion: @escaping (Result<OktaResponse<LinkedObject>, Error>) -> Void) {
            do {
                send(try addLinkedObjectDefinitionURLRequest(linkedObject: linkedObject), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**

         - parameter linkedObject: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func addLinkedObjectDefinition(linkedObject: LinkedObject) async throws -> OktaResponse<LinkedObject> {
            try await send(try addLinkedObjectDefinitionURLRequest(linkedObject: linkedObject))
        }
        #endif

        #if canImport(Combine)
        /**

         - parameter linkedObject: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func addLinkedObjectDefinition(linkedObject: LinkedObject) throws -> AnyPublisher<OktaResponse<LinkedObject>, Error> {
            publish(try addLinkedObjectDefinitionURLRequest(linkedObject: linkedObject))
        }
        #endif


        internal func deleteLinkedObjectDefinitionURLRequest(linkedObjectName: String) throws -> URLRequest {
            try request(to: "/api/v1/meta/schemas/user/linkedObjects/{linkedObjectName}".expanded(using: [
                "linkedObjectName": linkedObjectName
            ]), method: "DELETE")
        }

        /**

         - parameter linkedObjectName: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func deleteLinkedObjectDefinition(linkedObjectName: String, completion: @escaping (Result<OktaResponse<Empty>, Error>) -> Void) {
            do {
                send(try deleteLinkedObjectDefinitionURLRequest(linkedObjectName: linkedObjectName), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**

         - parameter linkedObjectName: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func deleteLinkedObjectDefinition(linkedObjectName: String) async throws -> OktaResponse<Empty> {
            try await send(try deleteLinkedObjectDefinitionURLRequest(linkedObjectName: linkedObjectName))
        }
        #endif

        #if canImport(Combine)
        /**

         - parameter linkedObjectName: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func deleteLinkedObjectDefinition(linkedObjectName: String) throws -> AnyPublisher<OktaResponse<Empty>, Error> {
            publish(try deleteLinkedObjectDefinitionURLRequest(linkedObjectName: linkedObjectName))
        }
        #endif


        internal func getLinkedObjectDefinitionURLRequest(linkedObjectName: String) throws -> URLRequest {
            try request(to: "/api/v1/meta/schemas/user/linkedObjects/{linkedObjectName}".expanded(using: [
                "linkedObjectName": linkedObjectName
            ]), method: "GET")
        }

        /**

         - parameter linkedObjectName: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getLinkedObjectDefinition(linkedObjectName: String, completion: @escaping (Result<OktaResponse<LinkedObject>, Error>) -> Void) {
            do {
                send(try getLinkedObjectDefinitionURLRequest(linkedObjectName: linkedObjectName), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**

         - parameter linkedObjectName: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getLinkedObjectDefinition(linkedObjectName: String) async throws -> OktaResponse<LinkedObject> {
            try await send(try getLinkedObjectDefinitionURLRequest(linkedObjectName: linkedObjectName))
        }
        #endif

        #if canImport(Combine)
        /**

         - parameter linkedObjectName: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getLinkedObjectDefinition(linkedObjectName: String) throws -> AnyPublisher<OktaResponse<LinkedObject>, Error> {
            publish(try getLinkedObjectDefinitionURLRequest(linkedObjectName: linkedObjectName))
        }
        #endif


        internal func listLinkedObjectDefinitionsURLRequest() throws -> URLRequest {
            try request(to: "/api/v1/meta/schemas/user/linkedObjects", method: "GET")
        }

        /**

         - parameter completion: completion handler to receive the data and the error objects
         */
        func listLinkedObjectDefinitions(completion: @escaping (Result<OktaResponse<[LinkedObject]>, Error>) -> Void) {
            do {
                send(try listLinkedObjectDefinitionsURLRequest(), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**

         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func listLinkedObjectDefinitions() async throws -> OktaResponse<[LinkedObject]> {
            try await send(try listLinkedObjectDefinitionsURLRequest())
        }
        #endif

        #if canImport(Combine)
        /**

         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func listLinkedObjectDefinitions() throws -> AnyPublisher<OktaResponse<[LinkedObject]>, Error> {
            publish(try listLinkedObjectDefinitionsURLRequest())
        }
        #endif

    }
}
