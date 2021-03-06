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

    struct GroupAPI: OktaClientAPI {
        internal let context: OktaClient.APIContext

        /**
         Activate a Group Rule
         
         - parameter ruleId: (path)  
         */
        @discardableResult
        public func activateGroupRule(ruleId: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/groups/rules/{ruleId}/lifecycle/activate".expanded(using: [
                    "ruleId": ruleId
                ]), method: "POST"))
        }

        /**
         Assign an Application Instance Target to Application Administrator Role
         
         - parameter groupId: (path)  
         - parameter roleId: (path)  
         - parameter appName: (path)  
         - parameter applicationId: (path)  
         */
        @discardableResult
        public func addApplicationInstanceTargetToAppAdminRoleGivenToGroup(groupId: String, roleId: String, appName: String, applicationId: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId}".expanded(using: [
                    "groupId": groupId, 
                    "roleId": roleId, 
                    "appName": appName, 
                    "applicationId": applicationId
                ]), method: "PUT"))
        }

        /**
         Assign an Application Target to Administrator Role
         
         - parameter groupId: (path)  
         - parameter roleId: (path)  
         - parameter appName: (path)  
         */
        @discardableResult
        public func addApplicationTargetToAdminRoleGivenToGroup(groupId: String, roleId: String, appName: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName}".expanded(using: [
                    "groupId": groupId, 
                    "roleId": roleId, 
                    "appName": appName
                ]), method: "PUT"))
        }

        /**
         Assign a Group Target for Group Role
         
         - parameter groupId: (path)  
         - parameter roleId: (path)  
         - parameter targetGroupId: (path)  
         */
        @discardableResult
        public func addGroupTargetToGroupAdministratorRoleForGroup(groupId: String, roleId: String, targetGroupId: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/groups/{groupId}/roles/{roleId}/targets/groups/{targetGroupId}".expanded(using: [
                    "groupId": groupId, 
                    "roleId": roleId, 
                    "targetGroupId": targetGroupId
                ]), method: "PUT"))
        }

        /**
         Assign a User
         
         - parameter groupId: (path)  
         - parameter userId: (path)  
         */
        @discardableResult
        public func addUserToGroup(groupId: String, userId: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/groups/{groupId}/users/{userId}".expanded(using: [
                    "groupId": groupId, 
                    "userId": userId
                ]), method: "PUT"))
        }

        /**
         Assign a Role
         
         - parameter groupId: (path)  
         - parameter assignRoleRequest: (body)  
         - parameter disableNotifications: (query)  (optional)
         */
        public func assignRoleToGroup(groupId: String, assignRoleRequest: AssignRoleRequest, disableNotifications: Bool? = nil) async throws -> OktaResponse<Role> {
            try await send(try requestWithBody(to: "/api/v1/groups/{groupId}/roles".expanded(using: [
                    "groupId": groupId
                ]), method: "POST", query: [
                    "disableNotifications": disableNotifications
                ], body: assignRoleRequest))
        }

        /**
         Create a Group
         
         - parameter group: (body)  
         */
        public func createGroup(group: Group) async throws -> OktaResponse<Group> {
            try await send(try requestWithBody(to: "/api/v1/groups", method: "POST", body: group))
        }

        /**
         Create a Group Rule
         
         - parameter groupRule: (body)  
         */
        public func createGroupRule(groupRule: GroupRule) async throws -> OktaResponse<GroupRule> {
            try await send(try requestWithBody(to: "/api/v1/groups/rules", method: "POST", body: groupRule))
        }

        /**
         Deactivate a Group Rule
         
         - parameter ruleId: (path)  
         */
        @discardableResult
        public func deactivateGroupRule(ruleId: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/groups/rules/{ruleId}/lifecycle/deactivate".expanded(using: [
                    "ruleId": ruleId
                ]), method: "POST"))
        }

        /**
         Delete a Group
         
         - parameter groupId: (path)  
         */
        @discardableResult
        public func deleteGroup(groupId: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/groups/{groupId}".expanded(using: [
                    "groupId": groupId
                ]), method: "DELETE"))
        }

        /**
         Delete a group Rule
         
         - parameter ruleId: (path)  
         - parameter removeUsers: (query) Indicates whether to keep or remove users from groups assigned by this rule. (optional)
         */
        @discardableResult
        public func deleteGroupRule(ruleId: String, removeUsers: Bool? = nil) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/groups/rules/{ruleId}".expanded(using: [
                    "ruleId": ruleId
                ]), method: "DELETE", query: [
                    "removeUsers": removeUsers
                ]))
        }

        /**
         List all Group Rules
         
         - parameter groupId: (path)  
         */
        public func getGroup(groupId: String) async throws -> OktaResponse<Group> {
            try await send(try request(to: "/api/v1/groups/{groupId}".expanded(using: [
                    "groupId": groupId
                ]), method: "GET"))
        }

        /**
         Retrieve a Group Rule
         
         - parameter ruleId: (path)  
         - parameter expand: (query)  (optional)
         */
        public func getGroupRule(ruleId: String, expand: String? = nil) async throws -> OktaResponse<GroupRule> {
            try await send(try request(to: "/api/v1/groups/rules/{ruleId}".expanded(using: [
                    "ruleId": ruleId
                ]), method: "GET", query: [
                    "expand": expand
                ]))
        }

        /**
         Retrieve a Role
         
         - parameter groupId: (path)  
         - parameter roleId: (path)  
         */
        public func getRole(groupId: String, roleId: String) async throws -> OktaResponse<Role> {
            try await send(try request(to: "/api/v1/groups/{groupId}/roles/{roleId}".expanded(using: [
                    "groupId": groupId, 
                    "roleId": roleId
                ]), method: "GET"))
        }

        /**
         List all Application Targets for an Application Administrator Role
         
         - parameter groupId: (path)  
         - parameter roleId: (path)  
         - parameter after: (query)  (optional)
         - parameter limit: (query)  (optional, default to 20)
         */
        public func listApplicationTargetsForApplicationAdministratorRoleForGroup(groupId: String, roleId: String, after: String? = nil, limit: Int? = nil) async throws -> OktaResponse<[CatalogApplication]> {
            try await send(try request(to: "/api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps".expanded(using: [
                    "groupId": groupId, 
                    "roleId": roleId
                ]), method: "GET", query: [
                    "after": after, 
                    "limit": limit
                ]))
        }

        /**
         List all Assigned Applications
         
         - parameter groupId: (path)  
         - parameter after: (query) Specifies the pagination cursor for the next page of apps (optional)
         - parameter limit: (query) Specifies the number of app results for a page (optional, default to 20)
         */
        public func listAssignedApplicationsForGroup(groupId: String, after: String? = nil, limit: Int? = nil) async throws -> OktaResponse<[Application]> {
            try await send(try request(to: "/api/v1/groups/{groupId}/apps".expanded(using: [
                    "groupId": groupId
                ]), method: "GET", query: [
                    "after": after, 
                    "limit": limit
                ]))
        }

        /**
         List all Assigned Roles
         
         - parameter groupId: (path)  
         - parameter expand: (query)  (optional)
         */
        public func listGroupAssignedRoles(groupId: String, expand: String? = nil) async throws -> OktaResponse<[Role]> {
            try await send(try request(to: "/api/v1/groups/{groupId}/roles".expanded(using: [
                    "groupId": groupId
                ]), method: "GET", query: [
                    "expand": expand
                ]))
        }

        /**
         List all Group Rules
         
         - parameter limit: (query) Specifies the number of rule results in a page (optional, default to 50)
         - parameter after: (query) Specifies the pagination cursor for the next page of rules (optional)
         - parameter search: (query) Specifies the keyword to search fules for (optional)
         - parameter expand: (query) If specified as &#x60;groupIdToGroupNameMap&#x60;, then show group names (optional)
         */
        public func listGroupRules(limit: Int? = nil, after: String? = nil, search: String? = nil, expand: String? = nil) async throws -> OktaResponse<[GroupRule]> {
            try await send(try request(to: "/api/v1/groups/rules", method: "GET", query: [
                    "limit": limit, 
                    "after": after, 
                    "search": search, 
                    "expand": expand
                ]))
        }

        /**
         List all Group Targets for a Group Role
         
         - parameter groupId: (path)  
         - parameter roleId: (path)  
         - parameter after: (query)  (optional)
         - parameter limit: (query)  (optional, default to 20)
         */
        public func listGroupTargetsForGroupRole(groupId: String, roleId: String, after: String? = nil, limit: Int? = nil) async throws -> OktaResponse<[Group]> {
            try await send(try request(to: "/api/v1/groups/{groupId}/roles/{roleId}/targets/groups".expanded(using: [
                    "groupId": groupId, 
                    "roleId": roleId
                ]), method: "GET", query: [
                    "after": after, 
                    "limit": limit
                ]))
        }

        /**
         List all Member Users
         
         - parameter groupId: (path)  
         - parameter after: (query) Specifies the pagination cursor for the next page of users (optional)
         - parameter limit: (query) Specifies the number of user results in a page (optional, default to 1000)
         */
        public func listGroupUsers(groupId: String, after: String? = nil, limit: Int? = nil) async throws -> OktaResponse<[User]> {
            try await send(try request(to: "/api/v1/groups/{groupId}/users".expanded(using: [
                    "groupId": groupId
                ]), method: "GET", query: [
                    "after": after, 
                    "limit": limit
                ]))
        }

        /**
         List all Groups
         
         - parameter q: (query) Searches the name property of groups for matching value (optional)
         - parameter search: (query) Filter expression for groups (optional)
         - parameter after: (query) Specifies the pagination cursor for the next page of groups (optional)
         - parameter limit: (query) Specifies the number of group results in a page (optional, default to 10000)
         - parameter expand: (query) If specified, it causes additional metadata to be included in the response. (optional)
         */
        public func listGroups(q: String? = nil, search: String? = nil, after: String? = nil, limit: Int? = nil, expand: String? = nil) async throws -> OktaResponse<[Group]> {
            try await send(try request(to: "/api/v1/groups", method: "GET", query: [
                    "q": q, 
                    "search": search, 
                    "after": after, 
                    "limit": limit, 
                    "expand": expand
                ]))
        }

        /**
         Delete an Application Instance Target to Application Administrator Role
         
         - parameter groupId: (path)  
         - parameter roleId: (path)  
         - parameter appName: (path)  
         - parameter applicationId: (path)  
         */
        @discardableResult
        public func removeApplicationTargetFromAdministratorRoleGivenToGroup(groupId: String, roleId: String, appName: String, applicationId: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId}".expanded(using: [
                    "groupId": groupId, 
                    "roleId": roleId, 
                    "appName": appName, 
                    "applicationId": applicationId
                ]), method: "DELETE"))
        }

        /**
         Delete an Application Target from Application Administrator Role
         
         - parameter groupId: (path)  
         - parameter roleId: (path)  
         - parameter appName: (path)  
         */
        @discardableResult
        public func removeApplicationTargetFromApplicationAdministratorRoleGivenToGroup(groupId: String, roleId: String, appName: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName}".expanded(using: [
                    "groupId": groupId, 
                    "roleId": roleId, 
                    "appName": appName
                ]), method: "DELETE"))
        }

        /**
         Delete a Group Target for Group Role
         
         - parameter groupId: (path)  
         - parameter roleId: (path)  
         - parameter targetGroupId: (path)  
         */
        @discardableResult
        public func removeGroupTargetFromGroupAdministratorRoleGivenToGroup(groupId: String, roleId: String, targetGroupId: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/groups/{groupId}/roles/{roleId}/targets/groups/{targetGroupId}".expanded(using: [
                    "groupId": groupId, 
                    "roleId": roleId, 
                    "targetGroupId": targetGroupId
                ]), method: "DELETE"))
        }

        /**
         Delete a Role
         
         - parameter groupId: (path)  
         - parameter roleId: (path)  
         */
        @discardableResult
        public func removeRoleFromGroup(groupId: String, roleId: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/groups/{groupId}/roles/{roleId}".expanded(using: [
                    "groupId": groupId, 
                    "roleId": roleId
                ]), method: "DELETE"))
        }

        /**
         Unassign a User
         
         - parameter groupId: (path)  
         - parameter userId: (path)  
         */
        @discardableResult
        public func removeUserFromGroup(groupId: String, userId: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/groups/{groupId}/users/{userId}".expanded(using: [
                    "groupId": groupId, 
                    "userId": userId
                ]), method: "DELETE"))
        }

        /**
         Replace a Group
         
         - parameter groupId: (path)  
         - parameter group: (body)  
         */
        public func updateGroup(groupId: String, group: Group) async throws -> OktaResponse<Group> {
            try await send(try requestWithBody(to: "/api/v1/groups/{groupId}".expanded(using: [
                    "groupId": groupId
                ]), method: "PUT", body: group))
        }

        /**
         Replace a Group Rule
         
         - parameter ruleId: (path)  
         - parameter groupRule: (body)  
         */
        public func updateGroupRule(ruleId: String, groupRule: GroupRule) async throws -> OktaResponse<GroupRule> {
            try await send(try requestWithBody(to: "/api/v1/groups/rules/{ruleId}".expanded(using: [
                    "ruleId": ruleId
                ]), method: "PUT", body: groupRule))
        }

    }
}
