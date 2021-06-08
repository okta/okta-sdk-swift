//
// SmsUserFactor.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SmsUserFactor: Codable, Hashable, UserFactorType {

    public var profile: SmsUserFactorProfile?
    public var provider: Provider?
    public var factorType: FactorType?

    public init(profile: SmsUserFactorProfile? = nil) {
        self.profile = profile
        self.provider = .okta
        self.factorType = .sms
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case profile
        case provider
        case factorType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(profile, forKey: .profile)
        try container.encode(factorType, forKey: .factorType)
        try container.encode(provider, forKey: .provider)
    }



}
