//
// OrgOktaSupportSettingsObj.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct OrgOktaSupportSettingsObj: Codable, Hashable {

    public var links: [String: AnyCodable]?
    public var expiration: Date?
    public var support: OrgOktaSupportSetting?

    public init(links: [String: AnyCodable]? = nil, expiration: Date? = nil, support: OrgOktaSupportSetting? = nil) {
        self.links = links
        self.expiration = expiration
        self.support = support
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case expiration
        case support
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(expiration, forKey: .expiration)
        try container.encodeIfPresent(support, forKey: .support)
    }



}

