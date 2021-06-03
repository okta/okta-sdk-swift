//
// JwkUse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct JwkUse: Codable, Hashable {

    public enum Use: String, Codable, CaseIterable {
        case sig = "sig"
    }
    public var use: Use?

    public init(use: Use? = nil) {
        self.use = use
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case use
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(use, forKey: .use)
    }



}
