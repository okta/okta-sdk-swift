//
// OrgPreferences.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct OrgPreferences: Codable/*, Hashable*/ {

    public var links: [String: AnyCodable]?
    public var showEndUserFooter: Bool?

    public init(links: [String: AnyCodable]? = nil, showEndUserFooter: Bool? = nil) {
        self.links = links
        self.showEndUserFooter = showEndUserFooter
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case showEndUserFooter
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(showEndUserFooter, forKey: .showEndUserFooter)
    }



}

