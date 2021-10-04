//
// AuthorizationServerCredentials.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct AuthorizationServerCredentials: Codable, Hashable {

    public var signing: AuthorizationServerCredentialsSigningConfig?

    public init(signing: AuthorizationServerCredentialsSigningConfig? = nil) {
        self.signing = signing
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case signing
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(signing, forKey: .signing)
    }



}

