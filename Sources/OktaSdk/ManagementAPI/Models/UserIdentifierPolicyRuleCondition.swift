//
// UserIdentifierPolicyRuleCondition.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct UserIdentifierPolicyRuleCondition: Codable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case identifier = "IDENTIFIER"
        case attribute = "ATTRIBUTE"
    }
    public var attribute: String?
    public var patterns: [UserIdentifierConditionEvaluatorPattern]?
    public var type: ModelType?

    public init(attribute: String? = nil, patterns: [UserIdentifierConditionEvaluatorPattern]? = nil, type: ModelType? = nil) {
        self.attribute = attribute
        self.patterns = patterns
        self.type = type
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attribute
        case patterns
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(attribute, forKey: .attribute)
        try container.encodeIfPresent(patterns, forKey: .patterns)
        try container.encodeIfPresent(type, forKey: .type)
    }



}

