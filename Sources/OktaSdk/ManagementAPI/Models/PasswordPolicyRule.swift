//
// PasswordPolicyRule.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct PasswordPolicyRule: Codable, Hashable {

    public var actions: PasswordPolicyRuleActions?
    public var conditions: PasswordPolicyRuleConditions?
    public var name: String?

    public init(actions: PasswordPolicyRuleActions? = nil, conditions: PasswordPolicyRuleConditions? = nil, name: String? = nil) {
        self.actions = actions
        self.conditions = conditions
        self.name = name
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case actions
        case conditions
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(actions, forKey: .actions)
        try container.encodeIfPresent(conditions, forKey: .conditions)
        try container.encodeIfPresent(name, forKey: .name)
    }



}

