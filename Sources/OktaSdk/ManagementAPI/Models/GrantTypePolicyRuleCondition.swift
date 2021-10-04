//
// GrantTypePolicyRuleCondition.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct GrantTypePolicyRuleCondition: Codable, Hashable {

    public var include: [String]?

    public init(include: [String]? = nil) {
        self.include = include
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case include
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(include, forKey: .include)
    }



}

