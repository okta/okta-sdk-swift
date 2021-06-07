//
// PolicyRuleActions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct PolicyRuleActions: Codable, Hashable {

    public var enroll: PolicyRuleActionsEnroll?
    public var passwordChange: PasswordPolicyRuleAction?
    public var selfServicePasswordReset: PasswordPolicyRuleAction?
    public var selfServiceUnlock: PasswordPolicyRuleAction?
    public var signon: OktaSignOnPolicyRuleSignonActions?

    public init(enroll: PolicyRuleActionsEnroll? = nil, passwordChange: PasswordPolicyRuleAction? = nil, selfServicePasswordReset: PasswordPolicyRuleAction? = nil, selfServiceUnlock: PasswordPolicyRuleAction? = nil, signon: OktaSignOnPolicyRuleSignonActions? = nil) {
        self.enroll = enroll
        self.passwordChange = passwordChange
        self.selfServicePasswordReset = selfServicePasswordReset
        self.selfServiceUnlock = selfServiceUnlock
        self.signon = signon
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enroll
        case passwordChange
        case selfServicePasswordReset
        case selfServiceUnlock
        case signon
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enroll, forKey: .enroll)
        try container.encodeIfPresent(passwordChange, forKey: .passwordChange)
        try container.encodeIfPresent(selfServicePasswordReset, forKey: .selfServicePasswordReset)
        try container.encodeIfPresent(selfServiceUnlock, forKey: .selfServiceUnlock)
        try container.encodeIfPresent(signon, forKey: .signon)
    }



}
