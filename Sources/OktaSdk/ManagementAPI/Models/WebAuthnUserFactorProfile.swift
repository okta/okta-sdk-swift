//
// WebAuthnUserFactorProfile.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct WebAuthnUserFactorProfile: Codable, Hashable {

    public var authenticatorName: String?
    public var credentialId: String?

    public init(authenticatorName: String? = nil, credentialId: String? = nil) {
        self.authenticatorName = authenticatorName
        self.credentialId = credentialId
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case authenticatorName
        case credentialId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(authenticatorName, forKey: .authenticatorName)
        try container.encodeIfPresent(credentialId, forKey: .credentialId)
    }



}
