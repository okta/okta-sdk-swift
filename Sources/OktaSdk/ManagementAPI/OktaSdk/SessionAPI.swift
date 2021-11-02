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

    struct SessionAPI: OktaClientAPI {
        internal let baseURL: URL
        internal let urlSession: URLSession


        internal func createSessionURLRequest(createSessionRequest: CreateSessionRequest) throws -> URLRequest {
            try request(to: "/api/v1/sessions", method: "POST", body: createSessionRequest)
        }

        /**
         Create Session with Session Token
         
         - parameter createSessionRequest: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func createSession(createSessionRequest: CreateSessionRequest, completion: @escaping (Result<OktaResponse<Session>, Error>) -> Void) {
            do {
                send(try createSessionURLRequest(createSessionRequest: createSessionRequest), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1)
        /**
         Create Session with Session Token
         
         - parameter createSessionRequest: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func createSession(createSessionRequest: CreateSessionRequest) async throws -> OktaResponse<Session> {
            try await send(try createSessionURLRequest(createSessionRequest: createSessionRequest))
        }
        #endif

        #if canImport(Combine)
        /**
         Create Session with Session Token
         
         - parameter createSessionRequest: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func createSession(createSessionRequest: CreateSessionRequest) throws -> AnyPublisher<OktaResponse<Session>, Error> {
            publish(try createSessionURLRequest(createSessionRequest: createSessionRequest))
        }
        #endif


        internal func endSessionURLRequest(sessionId: String) throws -> URLRequest {
            try request(to: "/api/v1/sessions/{sessionId}".expanded(using: [
                "sessionId": sessionId
            ]), method: "DELETE")
        }

        /**
         End Session
         
         - parameter sessionId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func endSession(sessionId: String, completion: @escaping (Result<OktaResponse<Empty>, Error>) -> Void) {
            do {
                send(try endSessionURLRequest(sessionId: sessionId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1)
        /**
         End Session
         
         - parameter sessionId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func endSession(sessionId: String) async throws -> OktaResponse<Empty> {
            try await send(try endSessionURLRequest(sessionId: sessionId))
        }
        #endif

        #if canImport(Combine)
        /**
         End Session
         
         - parameter sessionId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func endSession(sessionId: String) throws -> AnyPublisher<OktaResponse<Empty>, Error> {
            publish(try endSessionURLRequest(sessionId: sessionId))
        }
        #endif


        internal func getSessionURLRequest(sessionId: String) throws -> URLRequest {
            try request(to: "/api/v1/sessions/{sessionId}".expanded(using: [
                "sessionId": sessionId
            ]), method: "GET")
        }

        /**
         Get Session
         
         - parameter sessionId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getSession(sessionId: String, completion: @escaping (Result<OktaResponse<Session>, Error>) -> Void) {
            do {
                send(try getSessionURLRequest(sessionId: sessionId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1)
        /**
         Get Session
         
         - parameter sessionId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getSession(sessionId: String) async throws -> OktaResponse<Session> {
            try await send(try getSessionURLRequest(sessionId: sessionId))
        }
        #endif

        #if canImport(Combine)
        /**
         Get Session
         
         - parameter sessionId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getSession(sessionId: String) throws -> AnyPublisher<OktaResponse<Session>, Error> {
            publish(try getSessionURLRequest(sessionId: sessionId))
        }
        #endif


        internal func refreshSessionURLRequest(sessionId: String) throws -> URLRequest {
            try request(to: "/api/v1/sessions/{sessionId}/lifecycle/refresh".expanded(using: [
                "sessionId": sessionId
            ]), method: "POST")
        }

        /**
         Refresh Session
         
         - parameter sessionId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func refreshSession(sessionId: String, completion: @escaping (Result<OktaResponse<Session>, Error>) -> Void) {
            do {
                send(try refreshSessionURLRequest(sessionId: sessionId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1)
        /**
         Refresh Session
         
         - parameter sessionId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func refreshSession(sessionId: String) async throws -> OktaResponse<Session> {
            try await send(try refreshSessionURLRequest(sessionId: sessionId))
        }
        #endif

        #if canImport(Combine)
        /**
         Refresh Session
         
         - parameter sessionId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func refreshSession(sessionId: String) throws -> AnyPublisher<OktaResponse<Session>, Error> {
            publish(try refreshSessionURLRequest(sessionId: sessionId))
        }
        #endif

    }
}
