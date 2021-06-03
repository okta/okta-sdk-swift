//
// SwaApplication.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SwaApplication: Codable, Hashable {

    public var name: AnyCodable?
    public var settings: SwaApplicationSettings?

    public init(name: AnyCodable? = nil, settings: SwaApplicationSettings? = nil) {
        self.name = name
        self.settings = settings
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case settings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(settings, forKey: .settings)
    }



}
