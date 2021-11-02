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

    struct UserFactorAPI: OktaClientAPI {
        internal let baseURL: URL
        internal let urlSession: URLSession


        internal func activateFactorURLRequest(userId: String, factorId: String, activateFactorRequest: ActivateFactorRequest? = nil) throws -> URLRequest {
            try request(to: "/api/v1/users/{userId}/factors/{factorId}/lifecycle/activate".expanded(using: [
                "userId": userId, 
                "factorId": factorId
            ]), method: "POST", body: activateFactorRequest)
        }

        /**
         Activate Factor
         
         - parameter userId: (path)  
         - parameter factorId: (path)  
         - parameter activateFactorRequest: (body)  (optional)
         - parameter completion: completion handler to receive the data and the error objects
         */
        func activateFactor(userId: String, factorId: String, activateFactorRequest: ActivateFactorRequest? = nil, completion: @escaping (Result<OktaResponse<UserFactor>, Error>) -> Void) {
            do {
                send(try activateFactorURLRequest(userId: userId, factorId: factorId, activateFactorRequest: activateFactorRequest), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Activate Factor
         
         - parameter userId: (path)  
         - parameter factorId: (path)  
         - parameter activateFactorRequest: (body)  (optional)
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func activateFactorAsync(userId: String, factorId: String, activateFactorRequest: ActivateFactorRequest? = nil) async throws -> OktaResponse<UserFactor> {
            try await send(try activateFactorURLRequest(userId: userId, factorId: factorId, activateFactorRequest: activateFactorRequest))
        }

        #if canImport(Combine)
        /**
         Activate Factor
         
         - parameter userId: (path)  
         - parameter factorId: (path)  
         - parameter activateFactorRequest: (body)  (optional)
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func activateFactor(userId: String, factorId: String, activateFactorRequest: ActivateFactorRequest? = nil) throws -> AnyPublisher<OktaResponse<UserFactor>, Error> {
            publish(try activateFactorURLRequest(userId: userId, factorId: factorId, activateFactorRequest: activateFactorRequest))
        }
        #endif


        internal func deleteFactorURLRequest(userId: String, factorId: String) throws -> URLRequest {
            try request(to: "/api/v1/users/{userId}/factors/{factorId}".expanded(using: [
                "userId": userId, 
                "factorId": factorId
            ]), method: "DELETE")
        }

        /**

         - parameter userId: (path)  
         - parameter factorId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func deleteFactor(userId: String, factorId: String, completion: @escaping (Result<OktaResponse<Empty>, Error>) -> Void) {
            do {
                send(try deleteFactorURLRequest(userId: userId, factorId: factorId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter userId: (path)  
         - parameter factorId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func deleteFactorAsync(userId: String, factorId: String) async throws -> OktaResponse<Empty> {
            try await send(try deleteFactorURLRequest(userId: userId, factorId: factorId))
        }

        #if canImport(Combine)
        /**

         - parameter userId: (path)  
         - parameter factorId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func deleteFactor(userId: String, factorId: String) throws -> AnyPublisher<OktaResponse<Empty>, Error> {
            publish(try deleteFactorURLRequest(userId: userId, factorId: factorId))
        }
        #endif


        internal func enrollFactorURLRequest(userId: String, userFactor: UserFactor, updatePhone: Bool? = nil, templateId: String? = nil, tokenLifetimeSeconds: Int? = nil, activate: Bool? = nil) throws -> URLRequest {
            try request(to: "/api/v1/users/{userId}/factors".expanded(using: [
                "userId": userId
            ]), method: "POST", query: [
                "updatePhone": updatePhone, 
                "templateId": templateId, 
                "tokenLifetimeSeconds": tokenLifetimeSeconds, 
                "activate": activate
            ], body: userFactor)
        }

        /**
         Enroll Factor
         
         - parameter userId: (path)  
         - parameter userFactor: (body) Factor 
         - parameter updatePhone: (query)  (optional, default to false)
         - parameter templateId: (query) id of SMS template (only for SMS factor) (optional)
         - parameter tokenLifetimeSeconds: (query)  (optional, default to 300)
         - parameter activate: (query)  (optional, default to false)
         - parameter completion: completion handler to receive the data and the error objects
         */
        func enrollFactor(userId: String, userFactor: UserFactor, updatePhone: Bool? = nil, templateId: String? = nil, tokenLifetimeSeconds: Int? = nil, activate: Bool? = nil, completion: @escaping (Result<OktaResponse<UserFactor>, Error>) -> Void) {
            do {
                send(try enrollFactorURLRequest(userId: userId, userFactor: userFactor, updatePhone: updatePhone, templateId: templateId, tokenLifetimeSeconds: tokenLifetimeSeconds, activate: activate), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Enroll Factor
         
         - parameter userId: (path)  
         - parameter userFactor: (body) Factor 
         - parameter updatePhone: (query)  (optional, default to false)
         - parameter templateId: (query) id of SMS template (only for SMS factor) (optional)
         - parameter tokenLifetimeSeconds: (query)  (optional, default to 300)
         - parameter activate: (query)  (optional, default to false)
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func enrollFactorAsync(userId: String, userFactor: UserFactor, updatePhone: Bool? = nil, templateId: String? = nil, tokenLifetimeSeconds: Int? = nil, activate: Bool? = nil) async throws -> OktaResponse<UserFactor> {
            try await send(try enrollFactorURLRequest(userId: userId, userFactor: userFactor, updatePhone: updatePhone, templateId: templateId, tokenLifetimeSeconds: tokenLifetimeSeconds, activate: activate))
        }

        #if canImport(Combine)
        /**
         Enroll Factor
         
         - parameter userId: (path)  
         - parameter userFactor: (body) Factor 
         - parameter updatePhone: (query)  (optional, default to false)
         - parameter templateId: (query) id of SMS template (only for SMS factor) (optional)
         - parameter tokenLifetimeSeconds: (query)  (optional, default to 300)
         - parameter activate: (query)  (optional, default to false)
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func enrollFactor(userId: String, userFactor: UserFactor, updatePhone: Bool? = nil, templateId: String? = nil, tokenLifetimeSeconds: Int? = nil, activate: Bool? = nil) throws -> AnyPublisher<OktaResponse<UserFactor>, Error> {
            publish(try enrollFactorURLRequest(userId: userId, userFactor: userFactor, updatePhone: updatePhone, templateId: templateId, tokenLifetimeSeconds: tokenLifetimeSeconds, activate: activate))
        }
        #endif


        internal func getFactorURLRequest(userId: String, factorId: String) throws -> URLRequest {
            try request(to: "/api/v1/users/{userId}/factors/{factorId}".expanded(using: [
                "userId": userId, 
                "factorId": factorId
            ]), method: "GET")
        }

        /**

         - parameter userId: (path)  
         - parameter factorId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getFactor(userId: String, factorId: String, completion: @escaping (Result<OktaResponse<UserFactor>, Error>) -> Void) {
            do {
                send(try getFactorURLRequest(userId: userId, factorId: factorId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter userId: (path)  
         - parameter factorId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getFactorAsync(userId: String, factorId: String) async throws -> OktaResponse<UserFactor> {
            try await send(try getFactorURLRequest(userId: userId, factorId: factorId))
        }

        #if canImport(Combine)
        /**

         - parameter userId: (path)  
         - parameter factorId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getFactor(userId: String, factorId: String) throws -> AnyPublisher<OktaResponse<UserFactor>, Error> {
            publish(try getFactorURLRequest(userId: userId, factorId: factorId))
        }
        #endif


        internal func getFactorTransactionStatusURLRequest(userId: String, factorId: String, transactionId: String) throws -> URLRequest {
            try request(to: "/api/v1/users/{userId}/factors/{factorId}/transactions/{transactionId}".expanded(using: [
                "userId": userId, 
                "factorId": factorId, 
                "transactionId": transactionId
            ]), method: "GET")
        }

        /**

         - parameter userId: (path)  
         - parameter factorId: (path)  
         - parameter transactionId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getFactorTransactionStatus(userId: String, factorId: String, transactionId: String, completion: @escaping (Result<OktaResponse<VerifyUserFactorResponse>, Error>) -> Void) {
            do {
                send(try getFactorTransactionStatusURLRequest(userId: userId, factorId: factorId, transactionId: transactionId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter userId: (path)  
         - parameter factorId: (path)  
         - parameter transactionId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getFactorTransactionStatusAsync(userId: String, factorId: String, transactionId: String) async throws -> OktaResponse<VerifyUserFactorResponse> {
            try await send(try getFactorTransactionStatusURLRequest(userId: userId, factorId: factorId, transactionId: transactionId))
        }

        #if canImport(Combine)
        /**

         - parameter userId: (path)  
         - parameter factorId: (path)  
         - parameter transactionId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getFactorTransactionStatus(userId: String, factorId: String, transactionId: String) throws -> AnyPublisher<OktaResponse<VerifyUserFactorResponse>, Error> {
            publish(try getFactorTransactionStatusURLRequest(userId: userId, factorId: factorId, transactionId: transactionId))
        }
        #endif


        internal func listFactorsURLRequest(userId: String) throws -> URLRequest {
            try request(to: "/api/v1/users/{userId}/factors".expanded(using: [
                "userId": userId
            ]), method: "GET")
        }

        /**

         - parameter userId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func listFactors(userId: String, completion: @escaping (Result<OktaResponse<[UserFactor]>, Error>) -> Void) {
            do {
                send(try listFactorsURLRequest(userId: userId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter userId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func listFactorsAsync(userId: String) async throws -> OktaResponse<[UserFactor]> {
            try await send(try listFactorsURLRequest(userId: userId))
        }

        #if canImport(Combine)
        /**

         - parameter userId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func listFactors(userId: String) throws -> AnyPublisher<OktaResponse<[UserFactor]>, Error> {
            publish(try listFactorsURLRequest(userId: userId))
        }
        #endif


        internal func listSupportedFactorsURLRequest(userId: String) throws -> URLRequest {
            try request(to: "/api/v1/users/{userId}/factors/catalog".expanded(using: [
                "userId": userId
            ]), method: "GET")
        }

        /**

         - parameter userId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func listSupportedFactors(userId: String, completion: @escaping (Result<OktaResponse<[UserFactor]>, Error>) -> Void) {
            do {
                send(try listSupportedFactorsURLRequest(userId: userId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter userId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func listSupportedFactorsAsync(userId: String) async throws -> OktaResponse<[UserFactor]> {
            try await send(try listSupportedFactorsURLRequest(userId: userId))
        }

        #if canImport(Combine)
        /**

         - parameter userId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func listSupportedFactors(userId: String) throws -> AnyPublisher<OktaResponse<[UserFactor]>, Error> {
            publish(try listSupportedFactorsURLRequest(userId: userId))
        }
        #endif


        internal func listSupportedSecurityQuestionsURLRequest(userId: String) throws -> URLRequest {
            try request(to: "/api/v1/users/{userId}/factors/questions".expanded(using: [
                "userId": userId
            ]), method: "GET")
        }

        /**

         - parameter userId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func listSupportedSecurityQuestions(userId: String, completion: @escaping (Result<OktaResponse<[SecurityQuestion]>, Error>) -> Void) {
            do {
                send(try listSupportedSecurityQuestionsURLRequest(userId: userId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter userId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func listSupportedSecurityQuestionsAsync(userId: String) async throws -> OktaResponse<[SecurityQuestion]> {
            try await send(try listSupportedSecurityQuestionsURLRequest(userId: userId))
        }

        #if canImport(Combine)
        /**

         - parameter userId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func listSupportedSecurityQuestions(userId: String) throws -> AnyPublisher<OktaResponse<[SecurityQuestion]>, Error> {
            publish(try listSupportedSecurityQuestionsURLRequest(userId: userId))
        }
        #endif


        internal func verifyFactorURLRequest(userId: String, factorId: String, templateId: String? = nil, tokenLifetimeSeconds: Int? = nil, xForwardedFor: String? = nil, userAgent: String? = nil, acceptLanguage: String? = nil, verifyFactorRequest: VerifyFactorRequest? = nil) throws -> URLRequest {
            try request(to: "/api/v1/users/{userId}/factors/{factorId}/verify".expanded(using: [
                "userId": userId, 
                "factorId": factorId
            ]), method: "POST", query: [
                "templateId": templateId, 
                "tokenLifetimeSeconds": tokenLifetimeSeconds
            ], headers: [
                "xForwardedFor": xForwardedFor?.stringValue, 
                "userAgent": userAgent?.stringValue, 
                "acceptLanguage": acceptLanguage?.stringValue
            ], body: verifyFactorRequest)
        }

        /**
         Verify MFA Factor
         
         - parameter userId: (path)  
         - parameter factorId: (path)  
         - parameter templateId: (query)  (optional)
         - parameter tokenLifetimeSeconds: (query)  (optional, default to 300)
         - parameter xForwardedFor: (header)  (optional)
         - parameter userAgent: (header)  (optional)
         - parameter acceptLanguage: (header)  (optional)
         - parameter verifyFactorRequest: (body)  (optional)
         - parameter completion: completion handler to receive the data and the error objects
         */
        func verifyFactor(userId: String, factorId: String, templateId: String? = nil, tokenLifetimeSeconds: Int? = nil, xForwardedFor: String? = nil, userAgent: String? = nil, acceptLanguage: String? = nil, verifyFactorRequest: VerifyFactorRequest? = nil, completion: @escaping (Result<OktaResponse<VerifyUserFactorResponse>, Error>) -> Void) {
            do {
                send(try verifyFactorURLRequest(userId: userId, factorId: factorId, templateId: templateId, tokenLifetimeSeconds: tokenLifetimeSeconds, xForwardedFor: xForwardedFor, userAgent: userAgent, acceptLanguage: acceptLanguage, verifyFactorRequest: verifyFactorRequest), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Verify MFA Factor
         
         - parameter userId: (path)  
         - parameter factorId: (path)  
         - parameter templateId: (query)  (optional)
         - parameter tokenLifetimeSeconds: (query)  (optional, default to 300)
         - parameter xForwardedFor: (header)  (optional)
         - parameter userAgent: (header)  (optional)
         - parameter acceptLanguage: (header)  (optional)
         - parameter verifyFactorRequest: (body)  (optional)
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func verifyFactorAsync(userId: String, factorId: String, templateId: String? = nil, tokenLifetimeSeconds: Int? = nil, xForwardedFor: String? = nil, userAgent: String? = nil, acceptLanguage: String? = nil, verifyFactorRequest: VerifyFactorRequest? = nil) async throws -> OktaResponse<VerifyUserFactorResponse> {
            try await send(try verifyFactorURLRequest(userId: userId, factorId: factorId, templateId: templateId, tokenLifetimeSeconds: tokenLifetimeSeconds, xForwardedFor: xForwardedFor, userAgent: userAgent, acceptLanguage: acceptLanguage, verifyFactorRequest: verifyFactorRequest))
        }

        #if canImport(Combine)
        /**
         Verify MFA Factor
         
         - parameter userId: (path)  
         - parameter factorId: (path)  
         - parameter templateId: (query)  (optional)
         - parameter tokenLifetimeSeconds: (query)  (optional, default to 300)
         - parameter xForwardedFor: (header)  (optional)
         - parameter userAgent: (header)  (optional)
         - parameter acceptLanguage: (header)  (optional)
         - parameter verifyFactorRequest: (body)  (optional)
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func verifyFactor(userId: String, factorId: String, templateId: String? = nil, tokenLifetimeSeconds: Int? = nil, xForwardedFor: String? = nil, userAgent: String? = nil, acceptLanguage: String? = nil, verifyFactorRequest: VerifyFactorRequest? = nil) throws -> AnyPublisher<OktaResponse<VerifyUserFactorResponse>, Error> {
            publish(try verifyFactorURLRequest(userId: userId, factorId: factorId, templateId: templateId, tokenLifetimeSeconds: tokenLifetimeSeconds, xForwardedFor: xForwardedFor, userAgent: userAgent, acceptLanguage: acceptLanguage, verifyFactorRequest: verifyFactorRequest))
        }
        #endif

    }
}
