//
// TrustedOrigin.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct TrustedOrigin: Codable, Hashable {

    public var links: [String: AnyCodable]?
    public var created: Date?
    public var createdBy: String?
    public var id: String?
    public var lastUpdated: Date?
    public var lastUpdatedBy: String?
    public var name: String?
    public var origin: String?
    public var scopes: [Scope]?
    public var status: String?

    public init(links: [String: AnyCodable]? = nil, created: Date? = nil, createdBy: String? = nil, id: String? = nil, lastUpdated: Date? = nil, lastUpdatedBy: String? = nil, name: String? = nil, origin: String? = nil, scopes: [Scope]? = nil, status: String? = nil) {
        self.links = links
        self.created = created
        self.createdBy = createdBy
        self.id = id
        self.lastUpdated = lastUpdated
        self.lastUpdatedBy = lastUpdatedBy
        self.name = name
        self.origin = origin
        self.scopes = scopes
        self.status = status
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case created
        case createdBy
        case id
        case lastUpdated
        case lastUpdatedBy
        case name
        case origin
        case scopes
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(createdBy, forKey: .createdBy)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(lastUpdated, forKey: .lastUpdated)
        try container.encodeIfPresent(lastUpdatedBy, forKey: .lastUpdatedBy)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(origin, forKey: .origin)
        try container.encodeIfPresent(scopes, forKey: .scopes)
        try container.encodeIfPresent(status, forKey: .status)
    }



}
