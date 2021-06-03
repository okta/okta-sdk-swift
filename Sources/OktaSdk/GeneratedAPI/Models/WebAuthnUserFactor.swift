//
// WebAuthnUserFactor.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct WebAuthnUserFactor: Codable, Hashable {

    public var profile: WebAuthnUserFactorProfile?

    public init(profile: WebAuthnUserFactorProfile? = nil) {
        self.profile = profile
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case profile
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(profile, forKey: .profile)
    }



}
