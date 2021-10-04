//
// PasswordPolicyRecoveryQuestionComplexity.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct PasswordPolicyRecoveryQuestionComplexity: Codable, Hashable {

    public var minLength: Int?

    public init(minLength: Int? = nil) {
        self.minLength = minLength
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case minLength
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(minLength, forKey: .minLength)
    }



}

