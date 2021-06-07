//
// OpenIdConnectApplicationSettingsRefreshToken.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct OpenIdConnectApplicationSettingsRefreshToken: Codable, Hashable {

    public var leeway: Int?
    public var rotationType: OpenIdConnectRefreshTokenRotationType?

    public init(leeway: Int? = nil, rotationType: OpenIdConnectRefreshTokenRotationType? = nil) {
        self.leeway = leeway
        self.rotationType = rotationType
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case leeway
        case rotationType = "rotation_type"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(leeway, forKey: .leeway)
        try container.encodeIfPresent(rotationType, forKey: .rotationType)
    }



}
