//
// PasswordPolicyRuleActions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct PasswordPolicyRuleActions: Codable, Hashable {

    public var passwordChange: PasswordPolicyRuleAction?
    public var selfServicePasswordReset: PasswordPolicyRuleAction?
    public var selfServiceUnlock: PasswordPolicyRuleAction?

    public init(passwordChange: PasswordPolicyRuleAction? = nil, selfServicePasswordReset: PasswordPolicyRuleAction? = nil, selfServiceUnlock: PasswordPolicyRuleAction? = nil) {
        self.passwordChange = passwordChange
        self.selfServicePasswordReset = selfServicePasswordReset
        self.selfServiceUnlock = selfServiceUnlock
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case passwordChange
        case selfServicePasswordReset
        case selfServiceUnlock
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(passwordChange, forKey: .passwordChange)
        try container.encodeIfPresent(selfServicePasswordReset, forKey: .selfServicePasswordReset)
        try container.encodeIfPresent(selfServiceUnlock, forKey: .selfServiceUnlock)
    }



}

