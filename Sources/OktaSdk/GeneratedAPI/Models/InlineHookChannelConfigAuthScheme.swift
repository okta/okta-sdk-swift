//
// InlineHookChannelConfigAuthScheme.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct InlineHookChannelConfigAuthScheme: Codable, Hashable {

    public var key: String?
    public var type: String?
    public var value: String?

    public init(key: String? = nil, type: String? = nil, value: String? = nil) {
        self.key = key
        self.type = type
        self.value = value
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case type
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(value, forKey: .value)
    }



}
