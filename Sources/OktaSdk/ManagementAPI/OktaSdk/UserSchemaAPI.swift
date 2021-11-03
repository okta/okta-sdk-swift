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

    struct UserSchemaAPI: OktaClientAPI {
        internal let baseURL: URL
        internal let urlSession: URLSession


        internal func getApplicationUserSchemaURLRequest(appInstanceId: String) throws -> URLRequest {
            try request(to: "/api/v1/meta/schemas/apps/{appInstanceId}/default".expanded(using: [
                "appInstanceId": appInstanceId
            ]), method: "GET")
        }

        /**
         Fetches the Schema for an App User
         
         - parameter appInstanceId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getApplicationUserSchema(appInstanceId: String, completion: @escaping (Result<OktaResponse<UserSchema>, Error>) -> Void) {
            do {
                send(try getApplicationUserSchemaURLRequest(appInstanceId: appInstanceId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Fetches the Schema for an App User
         
         - parameter appInstanceId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getApplicationUserSchema(appInstanceId: String) async throws -> OktaResponse<UserSchema> {
            try await send(try getApplicationUserSchemaURLRequest(appInstanceId: appInstanceId))
        }
        #endif

        #if canImport(Combine)
        /**
         Fetches the Schema for an App User
         
         - parameter appInstanceId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getApplicationUserSchema(appInstanceId: String) throws -> AnyPublisher<OktaResponse<UserSchema>, Error> {
            publish(try getApplicationUserSchemaURLRequest(appInstanceId: appInstanceId))
        }
        #endif


        internal func getUserSchemaURLRequest(schemaId: String) throws -> URLRequest {
            try request(to: "/api/v1/meta/schemas/user/{schemaId}".expanded(using: [
                "schemaId": schemaId
            ]), method: "GET")
        }

        /**
         Fetches the schema for a Schema Id.
         
         - parameter schemaId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getUserSchema(schemaId: String, completion: @escaping (Result<OktaResponse<UserSchema>, Error>) -> Void) {
            do {
                send(try getUserSchemaURLRequest(schemaId: schemaId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Fetches the schema for a Schema Id.
         
         - parameter schemaId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getUserSchema(schemaId: String) async throws -> OktaResponse<UserSchema> {
            try await send(try getUserSchemaURLRequest(schemaId: schemaId))
        }
        #endif

        #if canImport(Combine)
        /**
         Fetches the schema for a Schema Id.
         
         - parameter schemaId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getUserSchema(schemaId: String) throws -> AnyPublisher<OktaResponse<UserSchema>, Error> {
            publish(try getUserSchemaURLRequest(schemaId: schemaId))
        }
        #endif


        internal func updateApplicationUserProfileURLRequest(appInstanceId: String, userSchema: UserSchema? = nil) throws -> URLRequest {
            try request(to: "/api/v1/meta/schemas/apps/{appInstanceId}/default".expanded(using: [
                "appInstanceId": appInstanceId
            ]), method: "POST", body: userSchema)
        }

        /**
         Partial updates on the User Profile properties of the Application User Schema.
         
         - parameter appInstanceId: (path)  
         - parameter userSchema: (body)  (optional)
         - parameter completion: completion handler to receive the data and the error objects
         */
        func updateApplicationUserProfile(appInstanceId: String, userSchema: UserSchema? = nil, completion: @escaping (Result<OktaResponse<UserSchema>, Error>) -> Void) {
            do {
                send(try updateApplicationUserProfileURLRequest(appInstanceId: appInstanceId, userSchema: userSchema), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Partial updates on the User Profile properties of the Application User Schema.
         
         - parameter appInstanceId: (path)  
         - parameter userSchema: (body)  (optional)
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func updateApplicationUserProfile(appInstanceId: String, userSchema: UserSchema? = nil) async throws -> OktaResponse<UserSchema> {
            try await send(try updateApplicationUserProfileURLRequest(appInstanceId: appInstanceId, userSchema: userSchema))
        }
        #endif

        #if canImport(Combine)
        /**
         Partial updates on the User Profile properties of the Application User Schema.
         
         - parameter appInstanceId: (path)  
         - parameter userSchema: (body)  (optional)
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func updateApplicationUserProfile(appInstanceId: String, userSchema: UserSchema? = nil) throws -> AnyPublisher<OktaResponse<UserSchema>, Error> {
            publish(try updateApplicationUserProfileURLRequest(appInstanceId: appInstanceId, userSchema: userSchema))
        }
        #endif


        internal func updateUserProfileURLRequest(schemaId: String, userSchema: UserSchema) throws -> URLRequest {
            try request(to: "/api/v1/meta/schemas/user/{schemaId}".expanded(using: [
                "schemaId": schemaId
            ]), method: "POST", body: userSchema)
        }

        /**

         - parameter schemaId: (path)  
         - parameter userSchema: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func updateUserProfile(schemaId: String, userSchema: UserSchema, completion: @escaping (Result<OktaResponse<UserSchema>, Error>) -> Void) {
            do {
                send(try updateUserProfileURLRequest(schemaId: schemaId, userSchema: userSchema), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**

         - parameter schemaId: (path)  
         - parameter userSchema: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func updateUserProfile(schemaId: String, userSchema: UserSchema) async throws -> OktaResponse<UserSchema> {
            try await send(try updateUserProfileURLRequest(schemaId: schemaId, userSchema: userSchema))
        }
        #endif

        #if canImport(Combine)
        /**

         - parameter schemaId: (path)  
         - parameter userSchema: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func updateUserProfile(schemaId: String, userSchema: UserSchema) throws -> AnyPublisher<OktaResponse<UserSchema>, Error> {
            publish(try updateUserProfileURLRequest(schemaId: schemaId, userSchema: userSchema))
        }
        #endif

    }
}
