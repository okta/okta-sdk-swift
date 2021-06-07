//
// Role.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct Role: Codable, Hashable {

    public var embedded: [String: AnyCodable]?
    public var links: [String: AnyCodable]?
    public var assignmentType: RoleAssignmentType?
    public var created: Date?
    public var description: String?
    public var id: String?
    public var label: String?
    public var lastUpdated: Date?
    public var status: RoleStatus?
    public var type: RoleType?

    public init(embedded: [String: AnyCodable]? = nil, links: [String: AnyCodable]? = nil, assignmentType: RoleAssignmentType? = nil, created: Date? = nil, description: String? = nil, id: String? = nil, label: String? = nil, lastUpdated: Date? = nil, status: RoleStatus? = nil, type: RoleType? = nil) {
        self.embedded = embedded
        self.links = links
        self.assignmentType = assignmentType
        self.created = created
        self.description = description
        self.id = id
        self.label = label
        self.lastUpdated = lastUpdated
        self.status = status
        self.type = type
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case embedded = "_embedded"
        case links = "_links"
        case assignmentType
        case created
        case description
        case id
        case label
        case lastUpdated
        case status
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(embedded, forKey: .embedded)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(assignmentType, forKey: .assignmentType)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(label, forKey: .label)
        try container.encodeIfPresent(lastUpdated, forKey: .lastUpdated)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(type, forKey: .type)
    }



}
