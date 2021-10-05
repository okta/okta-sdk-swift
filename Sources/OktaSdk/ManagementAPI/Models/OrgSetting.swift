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

public struct OrgSetting: Codable, Hashable {

    public var links: [String: AnyCodable]?
    public var address1: String?
    public var address2: String?
    public var city: String?
    public var companyName: String?
    public var country: String?
    public var created: Date?
    public var endUserSupportHelpURL: String?
    public var expiresAt: Date?
    public var id: String?
    public var lastUpdated: Date?
    public var phoneNumber: String?
    public var postalCode: String?
    public var state: String?
    public var status: String?
    public var subdomain: String?
    public var supportPhoneNumber: String?
    public var website: String?

    public init(links: [String: AnyCodable]? = nil, address1: String? = nil, address2: String? = nil, city: String? = nil, companyName: String? = nil, country: String? = nil, created: Date? = nil, endUserSupportHelpURL: String? = nil, expiresAt: Date? = nil, id: String? = nil, lastUpdated: Date? = nil, phoneNumber: String? = nil, postalCode: String? = nil, state: String? = nil, status: String? = nil, subdomain: String? = nil, supportPhoneNumber: String? = nil, website: String? = nil) {
        self.links = links
        self.address1 = address1
        self.address2 = address2
        self.city = city
        self.companyName = companyName
        self.country = country
        self.created = created
        self.endUserSupportHelpURL = endUserSupportHelpURL
        self.expiresAt = expiresAt
        self.id = id
        self.lastUpdated = lastUpdated
        self.phoneNumber = phoneNumber
        self.postalCode = postalCode
        self.state = state
        self.status = status
        self.subdomain = subdomain
        self.supportPhoneNumber = supportPhoneNumber
        self.website = website
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case address1
        case address2
        case city
        case companyName
        case country
        case created
        case endUserSupportHelpURL
        case expiresAt
        case id
        case lastUpdated
        case phoneNumber
        case postalCode
        case state
        case status
        case subdomain
        case supportPhoneNumber
        case website
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(address1, forKey: .address1)
        try container.encodeIfPresent(address2, forKey: .address2)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(companyName, forKey: .companyName)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(endUserSupportHelpURL, forKey: .endUserSupportHelpURL)
        try container.encodeIfPresent(expiresAt, forKey: .expiresAt)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(lastUpdated, forKey: .lastUpdated)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(postalCode, forKey: .postalCode)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(subdomain, forKey: .subdomain)
        try container.encodeIfPresent(supportPhoneNumber, forKey: .supportPhoneNumber)
        try container.encodeIfPresent(website, forKey: .website)
    }



}
