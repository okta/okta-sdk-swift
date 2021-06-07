//
// BasicAuthApplication.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct BasicAuthApplication: Codable, Hashable {

    public var credentials: SchemeApplicationCredentials?
    public var name: AnyCodable?
    public var settings: BasicApplicationSettings?

    public init(credentials: SchemeApplicationCredentials? = nil, name: AnyCodable? = nil, settings: BasicApplicationSettings? = nil) {
        self.credentials = credentials
        self.name = name
        self.settings = settings
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case credentials
        case name
        case settings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(credentials, forKey: .credentials)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(settings, forKey: .settings)
    }



}
