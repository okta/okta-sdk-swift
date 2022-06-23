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

    struct InlineHookAPI: OktaClientAPI {
        internal let context: OktaClient.APIContext

        /**
         Activate an Inline Hook
         
         - parameter inlineHookId: (path)  
         */
        func activateInlineHook(inlineHookId: String) async throws -> OktaResponse<InlineHook> {
            try await send(try request(to: "/api/v1/inlineHooks/{inlineHookId}/lifecycle/activate".expanded(using: [
                    "inlineHookId": inlineHookId
                ]), method: "POST"))
        }

        /**
         Create an Inline Hook
         
         - parameter inlineHook: (body)  
         */
        func createInlineHook(inlineHook: InlineHook) async throws -> OktaResponse<InlineHook> {
            try await send(try requestWithBody(to: "/api/v1/inlineHooks", method: "POST", body: inlineHook))
        }

        /**
         Deactivate an Inline Hook
         
         - parameter inlineHookId: (path)  
         */
        func deactivateInlineHook(inlineHookId: String) async throws -> OktaResponse<InlineHook> {
            try await send(try request(to: "/api/v1/inlineHooks/{inlineHookId}/lifecycle/deactivate".expanded(using: [
                    "inlineHookId": inlineHookId
                ]), method: "POST"))
        }

        /**
         Delete an Inline Hook
         
         - parameter inlineHookId: (path)  
         */
        @discardableResult
        func deleteInlineHook(inlineHookId: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/inlineHooks/{inlineHookId}".expanded(using: [
                    "inlineHookId": inlineHookId
                ]), method: "DELETE"))
        }

        /**
         Execute an Inline Hook
         
         - parameter inlineHookId: (path)  
         - parameter payloadData: (body)  
         */
        func executeInlineHook(inlineHookId: String, payloadData: AnyCodable) async throws -> OktaResponse<InlineHookResponse> {
            try await send(try requestWithBody(to: "/api/v1/inlineHooks/{inlineHookId}/execute".expanded(using: [
                    "inlineHookId": inlineHookId
                ]), method: "POST", body: payloadData))
        }

        /**
         Retrieve an Inline Hook
         
         - parameter inlineHookId: (path)  
         */
        func getInlineHook(inlineHookId: String) async throws -> OktaResponse<InlineHook> {
            try await send(try request(to: "/api/v1/inlineHooks/{inlineHookId}".expanded(using: [
                    "inlineHookId": inlineHookId
                ]), method: "GET"))
        }

        /**
         List all Inline Hooks
         
         - parameter type: (query)  (optional)
         */
        func listInlineHooks(type: String? = nil) async throws -> OktaResponse<[InlineHook]> {
            try await send(try request(to: "/api/v1/inlineHooks", method: "GET", query: [
                    "type": type
                ]))
        }

        /**
         Replace an Inline Hook
         
         - parameter inlineHookId: (path)  
         - parameter inlineHook: (body)  
         */
        func updateInlineHook(inlineHookId: String, inlineHook: InlineHook) async throws -> OktaResponse<InlineHook> {
            try await send(try requestWithBody(to: "/api/v1/inlineHooks/{inlineHookId}".expanded(using: [
                    "inlineHookId": inlineHookId
                ]), method: "PUT", body: inlineHook))
        }

    }
}
