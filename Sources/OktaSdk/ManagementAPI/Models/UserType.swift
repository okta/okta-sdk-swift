//
// UserType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct UserType: Codable, Hashable {

    public var links: [String: AnyCodable]?
    public var created: Date?
    public var createdBy: String?
    public var _default: Bool?
    public var description: String?
    public var displayName: String?
    public var id: String?
    public var lastUpdated: Date?
    public var lastUpdatedBy: String?
    public var name: String?

    public init(links: [String: AnyCodable]? = nil, created: Date? = nil, createdBy: String? = nil, _default: Bool? = nil, description: String? = nil, displayName: String? = nil, id: String? = nil, lastUpdated: Date? = nil, lastUpdatedBy: String? = nil, name: String? = nil) {
        self.links = links
        self.created = created
        self.createdBy = createdBy
        self._default = _default
        self.description = description
        self.displayName = displayName
        self.id = id
        self.lastUpdated = lastUpdated
        self.lastUpdatedBy = lastUpdatedBy
        self.name = name
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case created
        case createdBy
        case _default = "default"
        case description
        case displayName
        case id
        case lastUpdated
        case lastUpdatedBy
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(createdBy, forKey: .createdBy)
        try container.encodeIfPresent(_default, forKey: ._default)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(lastUpdated, forKey: .lastUpdated)
        try container.encodeIfPresent(lastUpdatedBy, forKey: .lastUpdatedBy)
        try container.encodeIfPresent(name, forKey: .name)
    }



}

