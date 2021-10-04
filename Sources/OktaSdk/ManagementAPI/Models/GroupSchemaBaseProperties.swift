//
// GroupSchemaBaseProperties.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct GroupSchemaBaseProperties: Codable/*, Hashable*/ {

    public var description: GroupSchemaAttribute?
    public var name: GroupSchemaAttribute?

    public init(description: GroupSchemaAttribute? = nil, name: GroupSchemaAttribute? = nil) {
        self.description = description
        self.name = name
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case description
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(name, forKey: .name)
    }



}

