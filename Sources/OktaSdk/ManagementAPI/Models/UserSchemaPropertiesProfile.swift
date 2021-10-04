//
// UserSchemaPropertiesProfile.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct UserSchemaPropertiesProfile: Codable, Hashable {

    public var allOf: [UserSchemaPropertiesProfileItem]?

    public init(allOf: [UserSchemaPropertiesProfileItem]? = nil) {
        self.allOf = allOf
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case allOf
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(allOf, forKey: .allOf)
    }



}

