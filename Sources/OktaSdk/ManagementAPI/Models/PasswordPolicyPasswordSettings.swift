//
// PasswordPolicyPasswordSettings.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct PasswordPolicyPasswordSettings: Codable, Hashable {

    public var age: PasswordPolicyPasswordSettingsAge?
    public var complexity: PasswordPolicyPasswordSettingsComplexity?
    public var lockout: PasswordPolicyPasswordSettingsLockout?

    public init(age: PasswordPolicyPasswordSettingsAge? = nil, complexity: PasswordPolicyPasswordSettingsComplexity? = nil, lockout: PasswordPolicyPasswordSettingsLockout? = nil) {
        self.age = age
        self.complexity = complexity
        self.lockout = lockout
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case age
        case complexity
        case lockout
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(age, forKey: .age)
        try container.encodeIfPresent(complexity, forKey: .complexity)
        try container.encodeIfPresent(lockout, forKey: .lockout)
    }



}

