//
// OrgContactTypeObj.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct OrgContactTypeObj: Codable/*, Hashable*/ {

    public var links: [String: AnyCodable]?
    public var contactType: OrgContactType?

    public init(links: [String: AnyCodable]? = nil, contactType: OrgContactType? = nil) {
        self.links = links
        self.contactType = contactType
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case contactType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(contactType, forKey: .contactType)
    }



}

