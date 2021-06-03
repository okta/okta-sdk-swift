//
// CustomHotpUserFactor.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct CustomHotpUserFactor: Codable, Hashable {

    public var factorProfileId: String?
    public var profile: CustomHotpUserFactorProfile?

    public init(factorProfileId: String? = nil, profile: CustomHotpUserFactorProfile? = nil) {
        self.factorProfileId = factorProfileId
        self.profile = profile
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case factorProfileId
        case profile
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(factorProfileId, forKey: .factorProfileId)
        try container.encodeIfPresent(profile, forKey: .profile)
    }



}
