//
// PasswordPolicyRecoveryQuestionProperties.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct PasswordPolicyRecoveryQuestionProperties: Codable, Hashable {

    public var complexity: PasswordPolicyRecoveryQuestionComplexity?

    public init(complexity: PasswordPolicyRecoveryQuestionComplexity? = nil) {
        self.complexity = complexity
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case complexity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(complexity, forKey: .complexity)
    }



}

