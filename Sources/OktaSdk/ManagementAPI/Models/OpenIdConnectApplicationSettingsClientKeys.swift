//
// OpenIdConnectApplicationSettingsClientKeys.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct OpenIdConnectApplicationSettingsClientKeys: Codable, Hashable {

    public var keys: [JsonWebKey]?

    public init(keys: [JsonWebKey]? = nil) {
        self.keys = keys
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case keys
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(keys, forKey: .keys)
    }



}

