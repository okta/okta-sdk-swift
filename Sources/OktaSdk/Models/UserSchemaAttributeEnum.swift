//
// UserSchemaAttributeEnum.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public final class UserSchemaAttributeEnum: Codable, Hashable {

    public var const: String?
    public var title: String?

    public init(const: String? = nil, title: String? = nil) {
        self.const = const
        self.title = title
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case const
        case title
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(const, forKey: .const)
        try container.encodeIfPresent(title, forKey: .title)
    }



    public static func == (lhs: UserSchemaAttributeEnum, rhs: UserSchemaAttributeEnum) -> Bool {
        lhs.const == rhs.const &&
        lhs.title == rhs.title
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(const?.hashValue)
        hasher.combine(title?.hashValue)
        
    }

}
