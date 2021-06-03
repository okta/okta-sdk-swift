//
// CallUserFactor.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct CallUserFactor: Codable, Hashable {

    public var profile: CallUserFactorProfile?

    public init(profile: CallUserFactorProfile? = nil) {
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
