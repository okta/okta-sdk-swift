//
// OAuth2ClaimConditions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct OAuth2ClaimConditions: Codable, Hashable {

    public var scopes: [String]?

    public init(scopes: [String]? = nil) {
        self.scopes = scopes
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case scopes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(scopes, forKey: .scopes)
    }



}

