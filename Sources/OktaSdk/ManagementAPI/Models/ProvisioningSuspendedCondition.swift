//
// ProvisioningSuspendedCondition.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct ProvisioningSuspendedCondition: Codable, Hashable {

    public enum Action: String, Codable, CaseIterable {
        case _none = "NONE"
        case unsuspend = "UNSUSPEND"
    }
    public var action: Action?

    public init(action: Action? = nil) {
        self.action = action
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case action
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(action, forKey: .action)
    }



}

