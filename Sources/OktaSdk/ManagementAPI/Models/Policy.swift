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

public struct Policy: Codable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case active = "ACTIVE"
        case inactive = "INACTIVE"
    }
    public var embedded: [String: AnyCodable]?
    public var links: [String: AnyCodable]?
    public var conditions: PolicyRuleConditions?
    public var created: Date?
    public var description: String?
    public var id: String?
    public var lastUpdated: Date?
    public var name: String?
    public var priority: Int?
    public var status: Status?
    public var system: Bool?
    public var type: PolicyType?

    public init(embedded: [String: AnyCodable]? = nil, links: [String: AnyCodable]? = nil, conditions: PolicyRuleConditions? = nil, created: Date? = nil, description: String? = nil, id: String? = nil, lastUpdated: Date? = nil, name: String? = nil, priority: Int? = nil, status: Status? = nil, system: Bool? = nil, type: PolicyType? = nil) {
        self.embedded = embedded
        self.links = links
        self.conditions = conditions
        self.created = created
        self.description = description
        self.id = id
        self.lastUpdated = lastUpdated
        self.name = name
        self.priority = priority
        self.status = status
        self.system = system
        self.type = type
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case embedded = "_embedded"
        case links = "_links"
        case conditions
        case created
        case description
        case id
        case lastUpdated
        case name
        case priority
        case status
        case system
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(embedded, forKey: .embedded)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(conditions, forKey: .conditions)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(lastUpdated, forKey: .lastUpdated)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(priority, forKey: .priority)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(system, forKey: .system)
        try container.encodeIfPresent(type, forKey: .type)
    }



}
