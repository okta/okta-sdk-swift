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

public struct WsFederationApplication: Codable, Hashable {

    public var accessibility: ApplicationAccessibility?
    public var created: Date?
    public var features: [String]?
    public var id: String?
    public var label: String?
    public var lastUpdated: Date?
    public var licensing: ApplicationLicensing?
    public var profile: [String: AnyCodable]?
    public var signOnMode: ApplicationSignOnMode?
    public var status: ApplicationLifecycleStatus?
    public var visibility: ApplicationVisibility?
    public var embedded: [String: AnyCodable]?
    public var links: [String: AnyCodable]?
    public var name: String? = "template_wsfed"
    public var settings: WsFederationApplicationSettings?

    public init(accessibility: ApplicationAccessibility? = nil, created: Date? = nil, features: [String]? = nil, id: String? = nil, label: String? = nil, lastUpdated: Date? = nil, licensing: ApplicationLicensing? = nil, profile: [String: AnyCodable]? = nil, signOnMode: ApplicationSignOnMode? = nil, status: ApplicationLifecycleStatus? = nil, visibility: ApplicationVisibility? = nil, embedded: [String: AnyCodable]? = nil, links: [String: AnyCodable]? = nil, name: String? = "template_wsfed", settings: WsFederationApplicationSettings? = nil) {
        self.accessibility = accessibility
        self.created = created
        self.features = features
        self.id = id
        self.label = label
        self.lastUpdated = lastUpdated
        self.licensing = licensing
        self.profile = profile
        self.signOnMode = signOnMode
        self.status = status
        self.visibility = visibility
        self.embedded = embedded
        self.links = links
        self.name = name
        self.settings = settings
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accessibility
        case created
        case features
        case id
        case label
        case lastUpdated
        case licensing
        case profile
        case signOnMode
        case status
        case visibility
        case embedded = "_embedded"
        case links = "_links"
        case name
        case settings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(accessibility, forKey: .accessibility)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(features, forKey: .features)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(label, forKey: .label)
        try container.encodeIfPresent(lastUpdated, forKey: .lastUpdated)
        try container.encodeIfPresent(licensing, forKey: .licensing)
        try container.encodeIfPresent(profile, forKey: .profile)
        try container.encodeIfPresent(signOnMode, forKey: .signOnMode)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(visibility, forKey: .visibility)
        try container.encodeIfPresent(embedded, forKey: .embedded)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(settings, forKey: .settings)
    }



}

