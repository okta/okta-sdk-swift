//
// LifecycleExpirationPolicyRuleCondition.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct LifecycleExpirationPolicyRuleCondition: Codable, Hashable {

    public var lifecycleStatus: String?
    public var number: Int?
    public var unit: String?

    public init(lifecycleStatus: String? = nil, number: Int? = nil, unit: String? = nil) {
        self.lifecycleStatus = lifecycleStatus
        self.number = number
        self.unit = unit
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case lifecycleStatus
        case number
        case unit
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(lifecycleStatus, forKey: .lifecycleStatus)
        try container.encodeIfPresent(number, forKey: .number)
        try container.encodeIfPresent(unit, forKey: .unit)
    }



}
