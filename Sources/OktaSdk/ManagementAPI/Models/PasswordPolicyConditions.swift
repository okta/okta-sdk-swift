//
// PasswordPolicyConditions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct PasswordPolicyConditions: Codable, Hashable {

    public var authProvider: PasswordPolicyAuthenticationProviderCondition?
    public var people: PolicyPeopleCondition?

    public init(authProvider: PasswordPolicyAuthenticationProviderCondition? = nil, people: PolicyPeopleCondition? = nil) {
        self.authProvider = authProvider
        self.people = people
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case authProvider
        case people
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(authProvider, forKey: .authProvider)
        try container.encodeIfPresent(people, forKey: .people)
    }



}
