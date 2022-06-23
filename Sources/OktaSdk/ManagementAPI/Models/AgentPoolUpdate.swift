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

/** Various information about agent auto update configuration */
public struct AgentPoolUpdate: Codable, Hashable {

    public var agents: [Agent]?
    public var agentType: AgentType?
    public var enabled: Bool?
    public var id: String?
    public var name: String?
    public var notifyAdmin: Bool?
    public var reason: String?
    public var schedule: AutoUpdateSchedule?
    public var sortOrder: Int?
    public var status: AgentUpdateJobStatus?
    public var targetVersion: String?
    public var links: HrefObject?

    public init(agents: [Agent]? = nil, agentType: AgentType? = nil, enabled: Bool? = nil, id: String? = nil, name: String? = nil, notifyAdmin: Bool? = nil, reason: String? = nil, schedule: AutoUpdateSchedule? = nil, sortOrder: Int? = nil, status: AgentUpdateJobStatus? = nil, targetVersion: String? = nil, links: HrefObject? = nil) {
        self.agents = agents
        self.agentType = agentType
        self.enabled = enabled
        self.id = id
        self.name = name
        self.notifyAdmin = notifyAdmin
        self.reason = reason
        self.schedule = schedule
        self.sortOrder = sortOrder
        self.status = status
        self.targetVersion = targetVersion
        self.links = links
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case agents
        case agentType
        case enabled
        case id
        case name
        case notifyAdmin
        case reason
        case schedule
        case sortOrder
        case status
        case targetVersion
        case links = "_links"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(agents, forKey: .agents)
        try container.encodeIfPresent(agentType, forKey: .agentType)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(notifyAdmin, forKey: .notifyAdmin)
        try container.encodeIfPresent(reason, forKey: .reason)
        try container.encodeIfPresent(schedule, forKey: .schedule)
        try container.encodeIfPresent(sortOrder, forKey: .sortOrder)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(targetVersion, forKey: .targetVersion)
        try container.encodeIfPresent(links, forKey: .links)
    }



}

