//
// PolicyAPI.swift
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

    struct PolicyAPI: OktaClientAPI {
        internal let baseURL: URL
        internal let session: URLSession


        internal func activatePolicyURLRequest(policyId: String) throws -> URLRequest {
            try request(to: "/api/v1/policies/{policyId}/lifecycle/activate".expanded(using: [
                "policyId": policyId
            ]), method: "POST")
        }

        /**

         - parameter policyId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func activatePolicy(policyId: String, completion: @escaping (Result<OktaResponse<Empty>, Error>) -> Void) {
            do {
                send(try activatePolicyURLRequest(policyId: policyId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter policyId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func activatePolicyAsync(policyId: String) async throws -> OktaResponse<Empty> {
            try await send(try activatePolicyURLRequest(policyId: policyId))
        }

        #if canImport(Combine)
        /**

         - parameter policyId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func activatePolicy(policyId: String) throws -> AnyPublisher<OktaResponse<Empty>, Error> {
            publish(try activatePolicyURLRequest(policyId: policyId))
        }
        #endif


        internal func activatePolicyRuleURLRequest(policyId: String, ruleId: String) throws -> URLRequest {
            try request(to: "/api/v1/policies/{policyId}/rules/{ruleId}/lifecycle/activate".expanded(using: [
                "policyId": policyId, 
                "ruleId": ruleId
            ]), method: "POST")
        }

        /**

         - parameter policyId: (path)  
         - parameter ruleId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func activatePolicyRule(policyId: String, ruleId: String, completion: @escaping (Result<OktaResponse<Empty>, Error>) -> Void) {
            do {
                send(try activatePolicyRuleURLRequest(policyId: policyId, ruleId: ruleId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter policyId: (path)  
         - parameter ruleId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func activatePolicyRuleAsync(policyId: String, ruleId: String) async throws -> OktaResponse<Empty> {
            try await send(try activatePolicyRuleURLRequest(policyId: policyId, ruleId: ruleId))
        }

        #if canImport(Combine)
        /**

         - parameter policyId: (path)  
         - parameter ruleId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func activatePolicyRule(policyId: String, ruleId: String) throws -> AnyPublisher<OktaResponse<Empty>, Error> {
            publish(try activatePolicyRuleURLRequest(policyId: policyId, ruleId: ruleId))
        }
        #endif


        internal func createPolicyURLRequest(policy: Policy, activate: Bool? = nil) throws -> URLRequest {
            try request(to: "/api/v1/policies", method: "POST", query: [
                "activate": activate
            ], body: policy)
        }

        /**

         - parameter policy: (body)  
         - parameter activate: (query)  (optional, default to true)
         - parameter completion: completion handler to receive the data and the error objects
         */
        func createPolicy(policy: Policy, activate: Bool? = nil, completion: @escaping (Result<OktaResponse<Policy>, Error>) -> Void) {
            do {
                send(try createPolicyURLRequest(policy: policy, activate: activate), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter policy: (body)  
         - parameter activate: (query)  (optional, default to true)
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func createPolicyAsync(policy: Policy, activate: Bool? = nil) async throws -> OktaResponse<Policy> {
            try await send(try createPolicyURLRequest(policy: policy, activate: activate))
        }

        #if canImport(Combine)
        /**

         - parameter policy: (body)  
         - parameter activate: (query)  (optional, default to true)
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func createPolicy(policy: Policy, activate: Bool? = nil) throws -> AnyPublisher<OktaResponse<Policy>, Error> {
            publish(try createPolicyURLRequest(policy: policy, activate: activate))
        }
        #endif


        internal func createPolicyRuleURLRequest(policyId: String, policyRule: PolicyRule) throws -> URLRequest {
            try request(to: "/api/v1/policies/{policyId}/rules".expanded(using: [
                "policyId": policyId
            ]), method: "POST", body: policyRule)
        }

        /**

         - parameter policyId: (path)  
         - parameter policyRule: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func createPolicyRule(policyId: String, policyRule: PolicyRule, completion: @escaping (Result<OktaResponse<PolicyRule>, Error>) -> Void) {
            do {
                send(try createPolicyRuleURLRequest(policyId: policyId, policyRule: policyRule), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter policyId: (path)  
         - parameter policyRule: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func createPolicyRuleAsync(policyId: String, policyRule: PolicyRule) async throws -> OktaResponse<PolicyRule> {
            try await send(try createPolicyRuleURLRequest(policyId: policyId, policyRule: policyRule))
        }

        #if canImport(Combine)
        /**

         - parameter policyId: (path)  
         - parameter policyRule: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func createPolicyRule(policyId: String, policyRule: PolicyRule) throws -> AnyPublisher<OktaResponse<PolicyRule>, Error> {
            publish(try createPolicyRuleURLRequest(policyId: policyId, policyRule: policyRule))
        }
        #endif


        internal func deactivatePolicyURLRequest(policyId: String) throws -> URLRequest {
            try request(to: "/api/v1/policies/{policyId}/lifecycle/deactivate".expanded(using: [
                "policyId": policyId
            ]), method: "POST")
        }

        /**

         - parameter policyId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func deactivatePolicy(policyId: String, completion: @escaping (Result<OktaResponse<Empty>, Error>) -> Void) {
            do {
                send(try deactivatePolicyURLRequest(policyId: policyId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter policyId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func deactivatePolicyAsync(policyId: String) async throws -> OktaResponse<Empty> {
            try await send(try deactivatePolicyURLRequest(policyId: policyId))
        }

        #if canImport(Combine)
        /**

         - parameter policyId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func deactivatePolicy(policyId: String) throws -> AnyPublisher<OktaResponse<Empty>, Error> {
            publish(try deactivatePolicyURLRequest(policyId: policyId))
        }
        #endif


        internal func deactivatePolicyRuleURLRequest(policyId: String, ruleId: String) throws -> URLRequest {
            try request(to: "/api/v1/policies/{policyId}/rules/{ruleId}/lifecycle/deactivate".expanded(using: [
                "policyId": policyId, 
                "ruleId": ruleId
            ]), method: "POST")
        }

        /**

         - parameter policyId: (path)  
         - parameter ruleId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func deactivatePolicyRule(policyId: String, ruleId: String, completion: @escaping (Result<OktaResponse<Empty>, Error>) -> Void) {
            do {
                send(try deactivatePolicyRuleURLRequest(policyId: policyId, ruleId: ruleId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter policyId: (path)  
         - parameter ruleId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func deactivatePolicyRuleAsync(policyId: String, ruleId: String) async throws -> OktaResponse<Empty> {
            try await send(try deactivatePolicyRuleURLRequest(policyId: policyId, ruleId: ruleId))
        }

        #if canImport(Combine)
        /**

         - parameter policyId: (path)  
         - parameter ruleId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func deactivatePolicyRule(policyId: String, ruleId: String) throws -> AnyPublisher<OktaResponse<Empty>, Error> {
            publish(try deactivatePolicyRuleURLRequest(policyId: policyId, ruleId: ruleId))
        }
        #endif


        internal func deletePolicyURLRequest(policyId: String) throws -> URLRequest {
            try request(to: "/api/v1/policies/{policyId}".expanded(using: [
                "policyId": policyId
            ]), method: "DELETE")
        }

        /**

         - parameter policyId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func deletePolicy(policyId: String, completion: @escaping (Result<OktaResponse<Empty>, Error>) -> Void) {
            do {
                send(try deletePolicyURLRequest(policyId: policyId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter policyId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func deletePolicyAsync(policyId: String) async throws -> OktaResponse<Empty> {
            try await send(try deletePolicyURLRequest(policyId: policyId))
        }

        #if canImport(Combine)
        /**

         - parameter policyId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func deletePolicy(policyId: String) throws -> AnyPublisher<OktaResponse<Empty>, Error> {
            publish(try deletePolicyURLRequest(policyId: policyId))
        }
        #endif


        internal func deletePolicyRuleURLRequest(policyId: String, ruleId: String) throws -> URLRequest {
            try request(to: "/api/v1/policies/{policyId}/rules/{ruleId}".expanded(using: [
                "policyId": policyId, 
                "ruleId": ruleId
            ]), method: "DELETE")
        }

        /**

         - parameter policyId: (path)  
         - parameter ruleId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func deletePolicyRule(policyId: String, ruleId: String, completion: @escaping (Result<OktaResponse<Empty>, Error>) -> Void) {
            do {
                send(try deletePolicyRuleURLRequest(policyId: policyId, ruleId: ruleId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter policyId: (path)  
         - parameter ruleId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func deletePolicyRuleAsync(policyId: String, ruleId: String) async throws -> OktaResponse<Empty> {
            try await send(try deletePolicyRuleURLRequest(policyId: policyId, ruleId: ruleId))
        }

        #if canImport(Combine)
        /**

         - parameter policyId: (path)  
         - parameter ruleId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func deletePolicyRule(policyId: String, ruleId: String) throws -> AnyPublisher<OktaResponse<Empty>, Error> {
            publish(try deletePolicyRuleURLRequest(policyId: policyId, ruleId: ruleId))
        }
        #endif


        internal func getPolicyURLRequest(policyId: String, expand: String? = nil) throws -> URLRequest {
            try request(to: "/api/v1/policies/{policyId}".expanded(using: [
                "policyId": policyId
            ]), method: "GET", query: [
                "expand": expand
            ])
        }

        /**

         - parameter policyId: (path)  
         - parameter expand: (query)  (optional, default to "")
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getPolicy(policyId: String, expand: String? = nil, completion: @escaping (Result<OktaResponse<Policy>, Error>) -> Void) {
            do {
                send(try getPolicyURLRequest(policyId: policyId, expand: expand), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter policyId: (path)  
         - parameter expand: (query)  (optional, default to "")
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getPolicyAsync(policyId: String, expand: String? = nil) async throws -> OktaResponse<Policy> {
            try await send(try getPolicyURLRequest(policyId: policyId, expand: expand))
        }

        #if canImport(Combine)
        /**

         - parameter policyId: (path)  
         - parameter expand: (query)  (optional, default to "")
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getPolicy(policyId: String, expand: String? = nil) throws -> AnyPublisher<OktaResponse<Policy>, Error> {
            publish(try getPolicyURLRequest(policyId: policyId, expand: expand))
        }
        #endif


        internal func getPolicyRuleURLRequest(policyId: String, ruleId: String) throws -> URLRequest {
            try request(to: "/api/v1/policies/{policyId}/rules/{ruleId}".expanded(using: [
                "policyId": policyId, 
                "ruleId": ruleId
            ]), method: "GET")
        }

        /**

         - parameter policyId: (path)  
         - parameter ruleId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getPolicyRule(policyId: String, ruleId: String, completion: @escaping (Result<OktaResponse<PolicyRule>, Error>) -> Void) {
            do {
                send(try getPolicyRuleURLRequest(policyId: policyId, ruleId: ruleId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter policyId: (path)  
         - parameter ruleId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getPolicyRuleAsync(policyId: String, ruleId: String) async throws -> OktaResponse<PolicyRule> {
            try await send(try getPolicyRuleURLRequest(policyId: policyId, ruleId: ruleId))
        }

        #if canImport(Combine)
        /**

         - parameter policyId: (path)  
         - parameter ruleId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getPolicyRule(policyId: String, ruleId: String) throws -> AnyPublisher<OktaResponse<PolicyRule>, Error> {
            publish(try getPolicyRuleURLRequest(policyId: policyId, ruleId: ruleId))
        }
        #endif


        internal func listPoliciesURLRequest(type: String, status: String? = nil, expand: String? = nil) throws -> URLRequest {
            try request(to: "/api/v1/policies", method: "GET", query: [
                "type": type, 
                "status": status, 
                "expand": expand
            ])
        }

        /**

         - parameter type: (query)  
         - parameter status: (query)  (optional)
         - parameter expand: (query)  (optional, default to "")
         - parameter completion: completion handler to receive the data and the error objects
         */
        func listPolicies(type: String, status: String? = nil, expand: String? = nil, completion: @escaping (Result<OktaResponse<[Policy]>, Error>) -> Void) {
            do {
                send(try listPoliciesURLRequest(type: type, status: status, expand: expand), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter type: (query)  
         - parameter status: (query)  (optional)
         - parameter expand: (query)  (optional, default to "")
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func listPoliciesAsync(type: String, status: String? = nil, expand: String? = nil) async throws -> OktaResponse<[Policy]> {
            try await send(try listPoliciesURLRequest(type: type, status: status, expand: expand))
        }

        #if canImport(Combine)
        /**

         - parameter type: (query)  
         - parameter status: (query)  (optional)
         - parameter expand: (query)  (optional, default to "")
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func listPolicies(type: String, status: String? = nil, expand: String? = nil) throws -> AnyPublisher<OktaResponse<[Policy]>, Error> {
            publish(try listPoliciesURLRequest(type: type, status: status, expand: expand))
        }
        #endif


        internal func listPolicyRulesURLRequest(policyId: String) throws -> URLRequest {
            try request(to: "/api/v1/policies/{policyId}/rules".expanded(using: [
                "policyId": policyId
            ]), method: "GET")
        }

        /**

         - parameter policyId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func listPolicyRules(policyId: String, completion: @escaping (Result<OktaResponse<[PolicyRule]>, Error>) -> Void) {
            do {
                send(try listPolicyRulesURLRequest(policyId: policyId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter policyId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func listPolicyRulesAsync(policyId: String) async throws -> OktaResponse<[PolicyRule]> {
            try await send(try listPolicyRulesURLRequest(policyId: policyId))
        }

        #if canImport(Combine)
        /**

         - parameter policyId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func listPolicyRules(policyId: String) throws -> AnyPublisher<OktaResponse<[PolicyRule]>, Error> {
            publish(try listPolicyRulesURLRequest(policyId: policyId))
        }
        #endif


        internal func updatePolicyURLRequest(policyId: String, policy: Policy) throws -> URLRequest {
            try request(to: "/api/v1/policies/{policyId}".expanded(using: [
                "policyId": policyId
            ]), method: "PUT", body: policy)
        }

        /**

         - parameter policyId: (path)  
         - parameter policy: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func updatePolicy(policyId: String, policy: Policy, completion: @escaping (Result<OktaResponse<Policy>, Error>) -> Void) {
            do {
                send(try updatePolicyURLRequest(policyId: policyId, policy: policy), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter policyId: (path)  
         - parameter policy: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func updatePolicyAsync(policyId: String, policy: Policy) async throws -> OktaResponse<Policy> {
            try await send(try updatePolicyURLRequest(policyId: policyId, policy: policy))
        }

        #if canImport(Combine)
        /**

         - parameter policyId: (path)  
         - parameter policy: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func updatePolicy(policyId: String, policy: Policy) throws -> AnyPublisher<OktaResponse<Policy>, Error> {
            publish(try updatePolicyURLRequest(policyId: policyId, policy: policy))
        }
        #endif


        internal func updatePolicyRuleURLRequest(policyId: String, ruleId: String, policyRule: PolicyRule) throws -> URLRequest {
            try request(to: "/api/v1/policies/{policyId}/rules/{ruleId}".expanded(using: [
                "policyId": policyId, 
                "ruleId": ruleId
            ]), method: "PUT", body: policyRule)
        }

        /**

         - parameter policyId: (path)  
         - parameter ruleId: (path)  
         - parameter policyRule: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func updatePolicyRule(policyId: String, ruleId: String, policyRule: PolicyRule, completion: @escaping (Result<OktaResponse<PolicyRule>, Error>) -> Void) {
            do {
                send(try updatePolicyRuleURLRequest(policyId: policyId, ruleId: ruleId, policyRule: policyRule), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**

         - parameter policyId: (path)  
         - parameter ruleId: (path)  
         - parameter policyRule: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func updatePolicyRuleAsync(policyId: String, ruleId: String, policyRule: PolicyRule) async throws -> OktaResponse<PolicyRule> {
            try await send(try updatePolicyRuleURLRequest(policyId: policyId, ruleId: ruleId, policyRule: policyRule))
        }

        #if canImport(Combine)
        /**

         - parameter policyId: (path)  
         - parameter ruleId: (path)  
         - parameter policyRule: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func updatePolicyRule(policyId: String, ruleId: String, policyRule: PolicyRule) throws -> AnyPublisher<OktaResponse<PolicyRule>, Error> {
            publish(try updatePolicyRuleURLRequest(policyId: policyId, ruleId: ruleId, policyRule: policyRule))
        }
        #endif

    }
}
