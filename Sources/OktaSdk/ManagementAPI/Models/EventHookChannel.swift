//
// EventHookChannel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct EventHookChannel: Codable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case http = "HTTP"
    }
    public var config: EventHookChannelConfig?
    public var type: ModelType?
    public var version: String?

    public init(config: EventHookChannelConfig? = nil, type: ModelType? = nil, version: String? = nil) {
        self.config = config
        self.type = type
        self.version = version
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case config
        case type
        case version
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(config, forKey: .config)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(version, forKey: .version)
    }



}

