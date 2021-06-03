//
// OktaSignOnPolicyRuleActions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct OktaSignOnPolicyRuleActions: Codable, Hashable {

    public var signon: OktaSignOnPolicyRuleSignonActions?

    public init(signon: OktaSignOnPolicyRuleSignonActions? = nil) {
        self.signon = signon
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case signon
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(signon, forKey: .signon)
    }



}
