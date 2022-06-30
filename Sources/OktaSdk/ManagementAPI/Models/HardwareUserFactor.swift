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

public struct HardwareUserFactor: Codable, Hashable {

    public var created: Date?
    public var factorType: FactorType?
    public var id: String?
    public var lastUpdated: Date?
    public var provider: FactorProvider?
    public var status: FactorStatus?
    public var verify: VerifyFactorRequest?
    public var embedded: [String: AnyCodable]?
    public var links: [String: AnyCodable]?
    public var profile: HardwareUserFactorProfile?

    public init(created: Date? = nil, factorType: FactorType? = nil, id: String? = nil, lastUpdated: Date? = nil, provider: FactorProvider? = nil, status: FactorStatus? = nil, verify: VerifyFactorRequest? = nil, embedded: [String: AnyCodable]? = nil, links: [String: AnyCodable]? = nil, profile: HardwareUserFactorProfile? = nil) {
        self.created = created
        self.factorType = factorType
        self.id = id
        self.lastUpdated = lastUpdated
        self.provider = provider
        self.status = status
        self.verify = verify
        self.embedded = embedded
        self.links = links
        self.profile = profile
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case created
        case factorType
        case id
        case lastUpdated
        case provider
        case status
        case verify
        case embedded = "_embedded"
        case links = "_links"
        case profile
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(factorType, forKey: .factorType)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(lastUpdated, forKey: .lastUpdated)
        try container.encodeIfPresent(provider, forKey: .provider)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(verify, forKey: .verify)
        try container.encodeIfPresent(embedded, forKey: .embedded)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(profile, forKey: .profile)
    }



}

