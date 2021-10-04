//
// UserSchemaAttributeMaster.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct UserSchemaAttributeMaster: Codable, Hashable {

    public var type: UserSchemaAttributeMasterType?
    public var priority: [UserSchemaAttributeMasterPriority]?

    public init(type: UserSchemaAttributeMasterType? = nil, priority: [UserSchemaAttributeMasterPriority]? = nil) {
        self.type = type
        self.priority = priority
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case priority
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(priority, forKey: .priority)
    }



}

