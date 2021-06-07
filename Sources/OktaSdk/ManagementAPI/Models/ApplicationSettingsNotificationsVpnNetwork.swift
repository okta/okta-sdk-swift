//
// ApplicationSettingsNotificationsVpnNetwork.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct ApplicationSettingsNotificationsVpnNetwork: Codable, Hashable {

    public var connection: String?
    public var exclude: [String]?
    public var include: [String]?

    public init(connection: String? = nil, exclude: [String]? = nil, include: [String]? = nil) {
        self.connection = connection
        self.exclude = exclude
        self.include = include
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case connection
        case exclude
        case include
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(connection, forKey: .connection)
        try container.encodeIfPresent(exclude, forKey: .exclude)
        try container.encodeIfPresent(include, forKey: .include)
    }



}
