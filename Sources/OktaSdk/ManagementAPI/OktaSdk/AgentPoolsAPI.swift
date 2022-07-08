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

    struct AgentPoolsAPI: OktaClientAPI {
        internal let context: OktaClient.APIContext

        /**
         Activate an Agent Pool update
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         */
        public func activateAgentPoolsUpdate(poolId: String, updateId: String) async throws -> OktaResponse<AgentPoolUpdate> {
            try await send(try request(to: "/api/v1/agentPools/{poolId}/updates/{updateId}/activate".expanded(using: [
                    "poolId": poolId, 
                    "updateId": updateId
                ]), method: "POST"))
        }

        /**
         Activate an Agent Pool update
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         - parameter completion: Completion block
         */
        public func activateAgentPoolsUpdate(poolId: String, updateId: String, completion: @escaping (Result<OktaResponse<AgentPoolUpdate>, Error>) -> Void) {
            do {
                send(try request(to: "/api/v1/agentPools/{poolId}/updates/{updateId}/activate".expanded(using: [
                        "poolId": poolId, 
                        "updateId": updateId
                    ]), method: "POST"), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Create an Agent Pool update
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter agentPoolUpdate: (body)  
         */
        public func createAgentPoolsUpdate(poolId: String, agentPoolUpdate: AgentPoolUpdate) async throws -> OktaResponse<AgentPoolUpdate> {
            try await send(try requestWithBody(to: "/api/v1/agentPools/{poolId}/updates".expanded(using: [
                    "poolId": poolId
                ]), method: "POST", body: agentPoolUpdate))
        }

        /**
         Create an Agent Pool update
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter agentPoolUpdate: (body)  
         - parameter completion: Completion block
         */
        public func createAgentPoolsUpdate(poolId: String, agentPoolUpdate: AgentPoolUpdate, completion: @escaping (Result<OktaResponse<AgentPoolUpdate>, Error>) -> Void) {
            do {
                send(try requestWithBody(to: "/api/v1/agentPools/{poolId}/updates".expanded(using: [
                        "poolId": poolId
                    ]), method: "POST", body: agentPoolUpdate), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Deactivate an Agent Pool update
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         */
        public func deactivateAgentPoolsUpdate(poolId: String, updateId: String) async throws -> OktaResponse<AgentPoolUpdate> {
            try await send(try request(to: "/api/v1/agentPools/{poolId}/updates/{updateId}/deactivate".expanded(using: [
                    "poolId": poolId, 
                    "updateId": updateId
                ]), method: "POST"))
        }

        /**
         Deactivate an Agent Pool update
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         - parameter completion: Completion block
         */
        public func deactivateAgentPoolsUpdate(poolId: String, updateId: String, completion: @escaping (Result<OktaResponse<AgentPoolUpdate>, Error>) -> Void) {
            do {
                send(try request(to: "/api/v1/agentPools/{poolId}/updates/{updateId}/deactivate".expanded(using: [
                        "poolId": poolId, 
                        "updateId": updateId
                    ]), method: "POST"), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Delete an Agent Pool update
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         */
        @discardableResult
        public func deleteAgentPoolsUpdate(poolId: String, updateId: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/agentPools/{poolId}/updates/{updateId}".expanded(using: [
                    "poolId": poolId, 
                    "updateId": updateId
                ]), method: "DELETE"))
        }

        /**
         Delete an Agent Pool update
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         - parameter completion: Completion block
         */
        public func deleteAgentPoolsUpdate(poolId: String, updateId: String, completion: @escaping (Result<OktaResponse<Empty>, Error>) -> Void) {
            do {
                send(try request(to: "/api/v1/agentPools/{poolId}/updates/{updateId}".expanded(using: [
                        "poolId": poolId, 
                        "updateId": updateId
                    ]), method: "DELETE"), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         List all Agent Pools
         
         - parameter limitPerPoolType: (query) Maximum number of AgentPools being returned (optional, default to 5)
         - parameter poolType: (query) Agent type to search for (optional)
         - parameter after: (query) The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the &#x60;Link&#x60; response header. See [Pagination](https://developer.okta.com/docs/reference/core-okta-api/#pagination) for more information. (optional)
         */
        public func getAgentPools(limitPerPoolType: Int? = nil, poolType: AgentType? = nil, after: String? = nil) async throws -> OktaResponse<[AgentPool]> {
            try await send(try request(to: "/api/v1/agentPools", method: "GET", query: [
                    "limitPerPoolType": limitPerPoolType, 
                    "poolType": poolType, 
                    "after": after
                ]))
        }

        /**
         List all Agent Pools
         
         - parameter limitPerPoolType: (query) Maximum number of AgentPools being returned (optional, default to 5)
         - parameter poolType: (query) Agent type to search for (optional)
         - parameter after: (query) The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the &#x60;Link&#x60; response header. See [Pagination](https://developer.okta.com/docs/reference/core-okta-api/#pagination) for more information. (optional)
         - parameter completion: Completion block
         */
        public func getAgentPools(limitPerPoolType: Int? = nil, poolType: AgentType? = nil, after: String? = nil, completion: @escaping (Result<OktaResponse<[AgentPool]>, Error>) -> Void) {
            do {
                send(try request(to: "/api/v1/agentPools", method: "GET", query: [
                        "limitPerPoolType": limitPerPoolType, 
                        "poolType": poolType, 
                        "after": after
                    ]), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Retrieve an Agent Pool update by id
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         */
        public func getAgentPoolsUpdateInstance(poolId: String, updateId: String) async throws -> OktaResponse<AgentPoolUpdate> {
            try await send(try request(to: "/api/v1/agentPools/{poolId}/updates/{updateId}".expanded(using: [
                    "poolId": poolId, 
                    "updateId": updateId
                ]), method: "GET"))
        }

        /**
         Retrieve an Agent Pool update by id
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         - parameter completion: Completion block
         */
        public func getAgentPoolsUpdateInstance(poolId: String, updateId: String, completion: @escaping (Result<OktaResponse<AgentPoolUpdate>, Error>) -> Void) {
            do {
                send(try request(to: "/api/v1/agentPools/{poolId}/updates/{updateId}".expanded(using: [
                        "poolId": poolId, 
                        "updateId": updateId
                    ]), method: "GET"), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Retrieve an Agent Pool update's settings
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         */
        public func getAgentPoolsUpdateSettings(poolId: String) async throws -> OktaResponse<AgentPoolUpdateSetting> {
            try await send(try request(to: "/api/v1/agentPools/{poolId}/updates/settings".expanded(using: [
                    "poolId": poolId
                ]), method: "GET"))
        }

        /**
         Retrieve an Agent Pool update's settings
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter completion: Completion block
         */
        public func getAgentPoolsUpdateSettings(poolId: String, completion: @escaping (Result<OktaResponse<AgentPoolUpdateSetting>, Error>) -> Void) {
            do {
                send(try request(to: "/api/v1/agentPools/{poolId}/updates/settings".expanded(using: [
                        "poolId": poolId
                    ]), method: "GET"), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         List all Agent Pool updates
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter scheduled: (query) Scope the list only to scheduled or ad-hoc updates. If the parameter is not provided we will return the whole list of updates. (optional)
         */
        public func getAgentPoolsUpdates(poolId: String, scheduled: Bool? = nil) async throws -> OktaResponse<[AgentPoolUpdate]> {
            try await send(try request(to: "/api/v1/agentPools/{poolId}/updates".expanded(using: [
                    "poolId": poolId
                ]), method: "GET", query: [
                    "scheduled": scheduled
                ]))
        }

        /**
         List all Agent Pool updates
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter scheduled: (query) Scope the list only to scheduled or ad-hoc updates. If the parameter is not provided we will return the whole list of updates. (optional)
         - parameter completion: Completion block
         */
        public func getAgentPoolsUpdates(poolId: String, scheduled: Bool? = nil, completion: @escaping (Result<OktaResponse<[AgentPoolUpdate]>, Error>) -> Void) {
            do {
                send(try request(to: "/api/v1/agentPools/{poolId}/updates".expanded(using: [
                        "poolId": poolId
                    ]), method: "GET", query: [
                        "scheduled": scheduled
                    ]), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Pause an Agent Pool update
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         */
        public func pauseAgentPoolsUpdate(poolId: String, updateId: String) async throws -> OktaResponse<AgentPoolUpdate> {
            try await send(try request(to: "/api/v1/agentPools/{poolId}/updates/{updateId}/pause".expanded(using: [
                    "poolId": poolId, 
                    "updateId": updateId
                ]), method: "POST"))
        }

        /**
         Pause an Agent Pool update
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         - parameter completion: Completion block
         */
        public func pauseAgentPoolsUpdate(poolId: String, updateId: String, completion: @escaping (Result<OktaResponse<AgentPoolUpdate>, Error>) -> Void) {
            do {
                send(try request(to: "/api/v1/agentPools/{poolId}/updates/{updateId}/pause".expanded(using: [
                        "poolId": poolId, 
                        "updateId": updateId
                    ]), method: "POST"), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Resume an Agent Pool update
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         */
        public func resumeAgentPoolsUpdate(poolId: String, updateId: String) async throws -> OktaResponse<AgentPoolUpdate> {
            try await send(try request(to: "/api/v1/agentPools/{poolId}/updates/{updateId}/resume".expanded(using: [
                    "poolId": poolId, 
                    "updateId": updateId
                ]), method: "POST"))
        }

        /**
         Resume an Agent Pool update
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         - parameter completion: Completion block
         */
        public func resumeAgentPoolsUpdate(poolId: String, updateId: String, completion: @escaping (Result<OktaResponse<AgentPoolUpdate>, Error>) -> Void) {
            do {
                send(try request(to: "/api/v1/agentPools/{poolId}/updates/{updateId}/resume".expanded(using: [
                        "poolId": poolId, 
                        "updateId": updateId
                    ]), method: "POST"), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Retry an Agent Pool update
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         */
        public func retryAgentPoolsUpdate(poolId: String, updateId: String) async throws -> OktaResponse<AgentPoolUpdate> {
            try await send(try request(to: "/api/v1/agentPools/{poolId}/updates/{updateId}/retry".expanded(using: [
                    "poolId": poolId, 
                    "updateId": updateId
                ]), method: "POST"))
        }

        /**
         Retry an Agent Pool update
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         - parameter completion: Completion block
         */
        public func retryAgentPoolsUpdate(poolId: String, updateId: String, completion: @escaping (Result<OktaResponse<AgentPoolUpdate>, Error>) -> Void) {
            do {
                send(try request(to: "/api/v1/agentPools/{poolId}/updates/{updateId}/retry".expanded(using: [
                        "poolId": poolId, 
                        "updateId": updateId
                    ]), method: "POST"), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Update an Agent pool update settings
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter agentPoolUpdateSetting: (body)  
         */
        public func setAgentPoolsUpdateSettings(poolId: String, agentPoolUpdateSetting: AgentPoolUpdateSetting) async throws -> OktaResponse<AgentPoolUpdateSetting> {
            try await send(try requestWithBody(to: "/api/v1/agentPools/{poolId}/updates/settings".expanded(using: [
                    "poolId": poolId
                ]), method: "POST", body: agentPoolUpdateSetting))
        }

        /**
         Update an Agent pool update settings
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter agentPoolUpdateSetting: (body)  
         - parameter completion: Completion block
         */
        public func setAgentPoolsUpdateSettings(poolId: String, agentPoolUpdateSetting: AgentPoolUpdateSetting, completion: @escaping (Result<OktaResponse<AgentPoolUpdateSetting>, Error>) -> Void) {
            do {
                send(try requestWithBody(to: "/api/v1/agentPools/{poolId}/updates/settings".expanded(using: [
                        "poolId": poolId
                    ]), method: "POST", body: agentPoolUpdateSetting), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Stop an Agent Pool update
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         */
        public func stopAgentPoolsUpdate(poolId: String, updateId: String) async throws -> OktaResponse<AgentPoolUpdate> {
            try await send(try request(to: "/api/v1/agentPools/{poolId}/updates/{updateId}/stop".expanded(using: [
                    "poolId": poolId, 
                    "updateId": updateId
                ]), method: "POST"))
        }

        /**
         Stop an Agent Pool update
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         - parameter completion: Completion block
         */
        public func stopAgentPoolsUpdate(poolId: String, updateId: String, completion: @escaping (Result<OktaResponse<AgentPoolUpdate>, Error>) -> Void) {
            do {
                send(try request(to: "/api/v1/agentPools/{poolId}/updates/{updateId}/stop".expanded(using: [
                        "poolId": poolId, 
                        "updateId": updateId
                    ]), method: "POST"), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Update an Agent Pool update by id
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         - parameter agentPoolUpdate: (body)  
         */
        public func updateAgentPoolsUpdate(poolId: String, updateId: String, agentPoolUpdate: AgentPoolUpdate) async throws -> OktaResponse<AgentPoolUpdate> {
            try await send(try requestWithBody(to: "/api/v1/agentPools/{poolId}/updates/{updateId}".expanded(using: [
                    "poolId": poolId, 
                    "updateId": updateId
                ]), method: "POST", body: agentPoolUpdate))
        }

        /**
         Update an Agent Pool update by id
         
         - parameter poolId: (path) Id of the agent pool for which the settings will apply 
         - parameter updateId: (path) Id of the update 
         - parameter agentPoolUpdate: (body)  
         - parameter completion: Completion block
         */
        public func updateAgentPoolsUpdate(poolId: String, updateId: String, agentPoolUpdate: AgentPoolUpdate, completion: @escaping (Result<OktaResponse<AgentPoolUpdate>, Error>) -> Void) {
            do {
                send(try requestWithBody(to: "/api/v1/agentPools/{poolId}/updates/{updateId}".expanded(using: [
                        "poolId": poolId, 
                        "updateId": updateId
                    ]), method: "POST", body: agentPoolUpdate), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

    }
}
