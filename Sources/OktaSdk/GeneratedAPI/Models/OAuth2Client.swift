//
// OAuth2Client.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct OAuth2Client: Codable, Hashable {

    public var links: [String: AnyCodable]?
    public var clientId: String?
    public var clientName: String?
    public var clientUri: String?
    public var logoUri: String?

    public init(links: [String: AnyCodable]? = nil, clientId: String? = nil, clientName: String? = nil, clientUri: String? = nil, logoUri: String? = nil) {
        self.links = links
        self.clientId = clientId
        self.clientName = clientName
        self.clientUri = clientUri
        self.logoUri = logoUri
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case clientId = "client_id"
        case clientName = "client_name"
        case clientUri = "client_uri"
        case logoUri = "logo_uri"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(clientId, forKey: .clientId)
        try container.encodeIfPresent(clientName, forKey: .clientName)
        try container.encodeIfPresent(clientUri, forKey: .clientUri)
        try container.encodeIfPresent(logoUri, forKey: .logoUri)
    }



}
