//
// PasswordPolicy.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct PasswordPolicy: Codable, Hashable {

    public var conditions: PasswordPolicyConditions?
    public var settings: PasswordPolicySettings?

    public init(conditions: PasswordPolicyConditions? = nil, settings: PasswordPolicySettings? = nil) {
        self.conditions = conditions
        self.settings = settings
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case conditions
        case settings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(conditions, forKey: .conditions)
        try container.encodeIfPresent(settings, forKey: .settings)
    }



}

