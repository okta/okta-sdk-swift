//
// SamlApplicationSettings.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SamlApplicationSettings: Codable, Hashable {

    public var signOn: SamlApplicationSettingsSignOn?

    public init(signOn: SamlApplicationSettingsSignOn? = nil) {
        self.signOn = signOn
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case signOn
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(signOn, forKey: .signOn)
    }



}

