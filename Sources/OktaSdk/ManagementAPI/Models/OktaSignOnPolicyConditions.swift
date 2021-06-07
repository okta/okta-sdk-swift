//
// OktaSignOnPolicyConditions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct OktaSignOnPolicyConditions: Codable, Hashable {

    public var people: PolicyPeopleCondition?

    public init(people: PolicyPeopleCondition? = nil) {
        self.people = people
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case people
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(people, forKey: .people)
    }



}
