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

public struct OAuth2ScopeConsentGrant: Codable, Hashable {

    public var embedded: [String: AnyCodable]?
    public var links: [String: AnyCodable]?
    public var clientId: String?
    public var userId: String?
    public var created: Date?
    public var createdBy: OAuth2Actor?
    public var id: String?
    public var issuer: String?
    public var lastUpdated: Date?
    public var scopeId: String?
    public var source: OAuth2ScopeConsentGrantSource?
    public var status: OAuth2ScopeConsentGrantStatus?

    public init(embedded: [String: AnyCodable]? = nil, links: [String: AnyCodable]? = nil, clientId: String? = nil, userId: String? = nil, created: Date? = nil, createdBy: OAuth2Actor? = nil, id: String? = nil, issuer: String? = nil, lastUpdated: Date? = nil, scopeId: String? = nil, source: OAuth2ScopeConsentGrantSource? = nil, status: OAuth2ScopeConsentGrantStatus? = nil) {
        self.embedded = embedded
        self.links = links
        self.clientId = clientId
        self.userId = userId
        self.created = created
        self.createdBy = createdBy
        self.id = id
        self.issuer = issuer
        self.lastUpdated = lastUpdated
        self.scopeId = scopeId
        self.source = source
        self.status = status
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case embedded = "_embedded"
        case links = "_links"
        case clientId
        case userId
        case created
        case createdBy
        case id
        case issuer
        case lastUpdated
        case scopeId
        case source
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(embedded, forKey: .embedded)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(clientId, forKey: .clientId)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(createdBy, forKey: .createdBy)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(issuer, forKey: .issuer)
        try container.encodeIfPresent(lastUpdated, forKey: .lastUpdated)
        try container.encodeIfPresent(scopeId, forKey: .scopeId)
        try container.encodeIfPresent(source, forKey: .source)
        try container.encodeIfPresent(status, forKey: .status)
    }



}
