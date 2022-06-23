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

    struct BehaviorAPI: OktaClientAPI {
        internal let context: OktaClient.APIContext

        /**
         Activate a Behavior Detection Rule
         
         - parameter behaviorId: (path) id of the Behavior Detection Rule 
         */
        func activateBehaviorDetectionRule(behaviorId: String) async throws -> OktaResponse<BehaviorRule> {
            try await send(try request(to: "/api/v1/behaviors/{behaviorId}/lifecycle/activate".expanded(using: [
                    "behaviorId": behaviorId
                ]), method: "POST"))
        }

        /**
         Create a Behavior Detection Rule
         
         - parameter rule: (body)  
         */
        func createBehaviorDetectionRule(rule: BehaviorRule) async throws -> OktaResponse<BehaviorRule> {
            try await send(try requestWithBody(to: "/api/v1/behaviors", method: "POST", body: rule))
        }

        /**
         Deactivate a Behavior Detection Rule
         
         - parameter behaviorId: (path) id of the Behavior Detection Rule 
         */
        func deactivateBehaviorDetectionRule(behaviorId: String) async throws -> OktaResponse<BehaviorRule> {
            try await send(try request(to: "/api/v1/behaviors/{behaviorId}/lifecycle/deactivate".expanded(using: [
                    "behaviorId": behaviorId
                ]), method: "POST"))
        }

        /**
         Delete a Behavior Detection Rule
         
         - parameter behaviorId: (path) id of the Behavior Detection Rule 
         */
        @discardableResult
        func deleteBehaviorDetectionRule(behaviorId: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/behaviors/{behaviorId}".expanded(using: [
                    "behaviorId": behaviorId
                ]), method: "DELETE"))
        }

        /**
         Retrieve a Behavior Detection Rule
         
         - parameter behaviorId: (path) id of the Behavior Detection Rule 
         */
        func getBehaviorDetectionRule(behaviorId: String) async throws -> OktaResponse<[BehaviorRule]> {
            try await send(try request(to: "/api/v1/behaviors/{behaviorId}".expanded(using: [
                    "behaviorId": behaviorId
                ]), method: "GET"))
        }

        /**
         List all Behavior Detection Rules
         
         */
        func listBehaviorDetectionRules() async throws -> OktaResponse<[BehaviorRule]> {
            try await send(try request(to: "/api/v1/behaviors", method: "GET"))
        }

        /**
         Replace a Behavior Detection Rule
         
         - parameter behaviorId: (path) id of the Behavior Detection Rule 
         - parameter rule: (body)  
         */
        func updateBehaviorDetectionRule(behaviorId: String, rule: BehaviorRule) async throws -> OktaResponse<BehaviorRule> {
            try await send(try requestWithBody(to: "/api/v1/behaviors/{behaviorId}".expanded(using: [
                    "behaviorId": behaviorId
                ]), method: "PUT", body: rule))
        }

    }
}
