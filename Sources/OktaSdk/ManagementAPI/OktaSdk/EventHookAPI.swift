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

    struct EventHookAPI: OktaClientAPI {
        internal let context: OktaClient.APIContext

        /**
         Activate an Event Hook
         
         - parameter eventHookId: (path)  
         */
        public func activateEventHook(eventHookId: String) async throws -> OktaResponse<EventHook> {
            try await send(try request(to: "/api/v1/eventHooks/{eventHookId}/lifecycle/activate".expanded(using: [
                    "eventHookId": eventHookId
                ]), method: "POST"))
        }

        /**
         Create an Event Hook
         
         - parameter eventHook: (body)  
         */
        public func createEventHook(eventHook: EventHook) async throws -> OktaResponse<EventHook> {
            try await send(try requestWithBody(to: "/api/v1/eventHooks", method: "POST", body: eventHook))
        }

        /**
         Deactivate an Event Hook
         
         - parameter eventHookId: (path)  
         */
        public func deactivateEventHook(eventHookId: String) async throws -> OktaResponse<EventHook> {
            try await send(try request(to: "/api/v1/eventHooks/{eventHookId}/lifecycle/deactivate".expanded(using: [
                    "eventHookId": eventHookId
                ]), method: "POST"))
        }

        /**
         Delete an Event Hook
         
         - parameter eventHookId: (path)  
         */
        @discardableResult
        public func deleteEventHook(eventHookId: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/eventHooks/{eventHookId}".expanded(using: [
                    "eventHookId": eventHookId
                ]), method: "DELETE"))
        }

        /**
         Retrieve an Event Hook
         
         - parameter eventHookId: (path)  
         */
        public func getEventHook(eventHookId: String) async throws -> OktaResponse<EventHook> {
            try await send(try request(to: "/api/v1/eventHooks/{eventHookId}".expanded(using: [
                    "eventHookId": eventHookId
                ]), method: "GET"))
        }

        /**
         List all Event Hooks
         
         */
        public func listEventHooks() async throws -> OktaResponse<[EventHook]> {
            try await send(try request(to: "/api/v1/eventHooks", method: "GET"))
        }

        /**
         Replace an Event Hook
         
         - parameter eventHookId: (path)  
         - parameter eventHook: (body)  
         */
        public func updateEventHook(eventHookId: String, eventHook: EventHook) async throws -> OktaResponse<EventHook> {
            try await send(try requestWithBody(to: "/api/v1/eventHooks/{eventHookId}".expanded(using: [
                    "eventHookId": eventHookId
                ]), method: "PUT", body: eventHook))
        }

        /**
         Verify an Event Hook
         
         - parameter eventHookId: (path)  
         */
        public func verifyEventHook(eventHookId: String) async throws -> OktaResponse<EventHook> {
            try await send(try request(to: "/api/v1/eventHooks/{eventHookId}/lifecycle/verify".expanded(using: [
                    "eventHookId": eventHookId
                ]), method: "POST"))
        }

    }
}
