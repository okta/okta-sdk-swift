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

public struct AuthorizationServerPolicyRule: Codable, Hashable {

    public var created: Date?
    public var id: String?
    public var lastUpdated: Date?
    public var name: String?
    public var priority: Int?
    public var status: LifecycleStatus?
    public var system: Bool? = false
    public var type: PolicyRuleType?
    public var actions: AuthorizationServerPolicyRuleActions?
    public var conditions: AuthorizationServerPolicyRuleConditions?

    public init(created: Date? = nil, id: String? = nil, lastUpdated: Date? = nil, name: String? = nil, priority: Int? = nil, status: LifecycleStatus? = nil, system: Bool? = false, type: PolicyRuleType? = nil, actions: AuthorizationServerPolicyRuleActions? = nil, conditions: AuthorizationServerPolicyRuleConditions? = nil) {
        self.created = created
        self.id = id
        self.lastUpdated = lastUpdated
        self.name = name
        self.priority = priority
        self.status = status
        self.system = system
        self.type = type
        self.actions = actions
        self.conditions = conditions
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case created
        case id
        case lastUpdated
        case name
        case priority
        case status
        case system
        case type
        case actions
        case conditions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(lastUpdated, forKey: .lastUpdated)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(priority, forKey: .priority)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(system, forKey: .system)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(actions, forKey: .actions)
        try container.encodeIfPresent(conditions, forKey: .conditions)
    }



}

