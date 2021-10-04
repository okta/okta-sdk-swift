//
// SwaThreeFieldApplication.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SwaThreeFieldApplication: Codable, Hashable {

    public var name: String? = "template_swa3field"
    public var settings: SwaThreeFieldApplicationSettings?

    public init(name: String? = "template_swa3field", settings: SwaThreeFieldApplicationSettings? = nil) {
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

