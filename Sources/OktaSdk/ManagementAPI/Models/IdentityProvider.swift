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

public struct IdentityProvider: Codable, Hashable {

    public var created: Date?
    public var id: String?
    public var issuerMode: IssuerMode?
    public var lastUpdated: Date?
    public var name: String?
    public var policy: IdentityProviderPolicy?
    public var _protocol: ModelProtocol?
    public var status: LifecycleStatus?
    public var type: String?
    public var links: [String: AnyCodable]?

    public init(created: Date? = nil, id: String? = nil, issuerMode: IssuerMode? = nil, lastUpdated: Date? = nil, name: String? = nil, policy: IdentityProviderPolicy? = nil, _protocol: ModelProtocol? = nil, status: LifecycleStatus? = nil, type: String? = nil, links: [String: AnyCodable]? = nil) {
        self.created = created
        self.id = id
        self.issuerMode = issuerMode
        self.lastUpdated = lastUpdated
        self.name = name
        self.policy = policy
        self._protocol = _protocol
        self.status = status
        self.type = type
        self.links = links
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case created
        case id
        case issuerMode
        case lastUpdated
        case name
        case policy
        case _protocol = "protocol"
        case status
        case type
        case links = "_links"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(issuerMode, forKey: .issuerMode)
        try container.encodeIfPresent(lastUpdated, forKey: .lastUpdated)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(policy, forKey: .policy)
        try container.encodeIfPresent(_protocol, forKey: ._protocol)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(links, forKey: .links)
    }



}

