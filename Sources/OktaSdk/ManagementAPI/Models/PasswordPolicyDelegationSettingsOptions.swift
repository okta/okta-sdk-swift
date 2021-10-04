//
// PasswordPolicyDelegationSettingsOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct PasswordPolicyDelegationSettingsOptions: Codable, Hashable {

    public var skipUnlock: Bool?

    public init(skipUnlock: Bool? = nil) {
        self.skipUnlock = skipUnlock
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case skipUnlock
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(skipUnlock, forKey: .skipUnlock)
    }



}

