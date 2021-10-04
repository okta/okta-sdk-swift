//
// SecurePasswordStoreApplication.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SecurePasswordStoreApplication: Codable, Hashable {

    public var credentials: SchemeApplicationCredentials?
    public var name: String? = "template_sps"
    public var settings: SecurePasswordStoreApplicationSettings?

    public init(credentials: SchemeApplicationCredentials? = nil, name: String? = "template_sps", settings: SecurePasswordStoreApplicationSettings? = nil) {
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

