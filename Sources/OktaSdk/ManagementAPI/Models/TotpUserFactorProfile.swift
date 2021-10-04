//
// TotpUserFactorProfile.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct TotpUserFactorProfile: Codable, Hashable {

    public var credentialId: String?

    public init(credentialId: String? = nil) {
        self.credentialId = credentialId
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case credentialId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(credentialId, forKey: .credentialId)
    }



}

