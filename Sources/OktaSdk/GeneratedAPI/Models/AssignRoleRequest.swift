//
// AssignRoleRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct AssignRoleRequest: Codable, Hashable {

    public var type: RoleType?

    public init(type: RoleType? = nil) {
        self.type = type
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
    }



}
