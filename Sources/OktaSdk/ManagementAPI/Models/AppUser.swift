//
// AppUser.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct AppUser: Codable, Hashable {

    public var embedded: [String: AnyCodable]?
    public var links: [String: AnyCodable]?
    public var created: Date?
    public var credentials: AppUserCredentials?
    public var externalId: String?
    public var id: String?
    public var lastSync: Date?
    public var lastUpdated: Date?
    public var passwordChanged: Date?
    public var profile: [String: AnyCodable]?
    public var scope: String?
    public var status: String?
    public var statusChanged: Date?
    public var syncState: String?

    public init(embedded: [String: AnyCodable]? = nil, links: [String: AnyCodable]? = nil, created: Date? = nil, credentials: AppUserCredentials? = nil, externalId: String? = nil, id: String? = nil, lastSync: Date? = nil, lastUpdated: Date? = nil, passwordChanged: Date? = nil, profile: [String: AnyCodable]? = nil, scope: String? = nil, status: String? = nil, statusChanged: Date? = nil, syncState: String? = nil) {
        self.embedded = embedded
        self.links = links
        self.created = created
        self.credentials = credentials
        self.externalId = externalId
        self.id = id
        self.lastSync = lastSync
        self.lastUpdated = lastUpdated
        self.passwordChanged = passwordChanged
        self.profile = profile
        self.scope = scope
        self.status = status
        self.statusChanged = statusChanged
        self.syncState = syncState
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case embedded = "_embedded"
        case links = "_links"
        case created
        case credentials
        case externalId
        case id
        case lastSync
        case lastUpdated
        case passwordChanged
        case profile
        case scope
        case status
        case statusChanged
        case syncState
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(embedded, forKey: .embedded)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(credentials, forKey: .credentials)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(lastSync, forKey: .lastSync)
        try container.encodeIfPresent(lastUpdated, forKey: .lastUpdated)
        try container.encodeIfPresent(passwordChanged, forKey: .passwordChanged)
        try container.encodeIfPresent(profile, forKey: .profile)
        try container.encodeIfPresent(scope, forKey: .scope)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(statusChanged, forKey: .statusChanged)
        try container.encodeIfPresent(syncState, forKey: .syncState)
    }



}

