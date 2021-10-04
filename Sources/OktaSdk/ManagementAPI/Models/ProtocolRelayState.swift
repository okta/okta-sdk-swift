//
// ProtocolRelayState.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct ProtocolRelayState: Codable, Hashable {

    public var format: ProtocolRelayStateFormat?

    public init(format: ProtocolRelayStateFormat? = nil) {
        self.format = format
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case format
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(format, forKey: .format)
    }



}

