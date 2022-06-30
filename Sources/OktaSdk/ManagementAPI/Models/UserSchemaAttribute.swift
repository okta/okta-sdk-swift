//
// Copyright (c) 2021-Present, Okta, Inc. and/or its affiliates. All rights reserved.
// The Okta software accompanied by this notice is provided pursuant to the Apache License, Version 2.0 (the "License.")
//
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0.
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//
// See the License for the specific language governing permissions and limitations under the License.
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct UserSchemaAttribute: Codable, Hashable {

    public var description: String?
    public var _enum: [String]?
    public var externalName: String?
    public var externalNamespace: String?
    public var items: UserSchemaAttributeItems?
    public var master: UserSchemaAttributeMaster?
    public var maxLength: Int?
    public var minLength: Int?
    public var mutability: String?
    public var oneOf: [UserSchemaAttributeEnum]?
    public var pattern: String?
    public var permissions: [UserSchemaAttributePermission]?
    public var _required: Bool?
    public var scope: UserSchemaAttributeScope?
    public var title: String?
    public var type: UserSchemaAttributeType?
    public var union: UserSchemaAttributeUnion?
    public var unique: String?

    public init(description: String? = nil, _enum: [String]? = nil, externalName: String? = nil, externalNamespace: String? = nil, items: UserSchemaAttributeItems? = nil, master: UserSchemaAttributeMaster? = nil, maxLength: Int? = nil, minLength: Int? = nil, mutability: String? = nil, oneOf: [UserSchemaAttributeEnum]? = nil, pattern: String? = nil, permissions: [UserSchemaAttributePermission]? = nil, _required: Bool? = nil, scope: UserSchemaAttributeScope? = nil, title: String? = nil, type: UserSchemaAttributeType? = nil, union: UserSchemaAttributeUnion? = nil, unique: String? = nil) {
        self.description = description
        self._enum = _enum
        self.externalName = externalName
        self.externalNamespace = externalNamespace
        self.items = items
        self.master = master
        self.maxLength = maxLength
        self.minLength = minLength
        self.mutability = mutability
        self.oneOf = oneOf
        self.pattern = pattern
        self.permissions = permissions
        self._required = _required
        self.scope = scope
        self.title = title
        self.type = type
        self.union = union
        self.unique = unique
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case description
        case _enum = "enum"
        case externalName
        case externalNamespace
        case items
        case master
        case maxLength
        case minLength
        case mutability
        case oneOf
        case pattern
        case permissions
        case _required = "required"
        case scope
        case title
        case type
        case union
        case unique
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(_enum, forKey: ._enum)
        try container.encodeIfPresent(externalName, forKey: .externalName)
        try container.encodeIfPresent(externalNamespace, forKey: .externalNamespace)
        try container.encodeIfPresent(items, forKey: .items)
        try container.encodeIfPresent(master, forKey: .master)
        try container.encodeIfPresent(maxLength, forKey: .maxLength)
        try container.encodeIfPresent(minLength, forKey: .minLength)
        try container.encodeIfPresent(mutability, forKey: .mutability)
        try container.encodeIfPresent(oneOf, forKey: .oneOf)
        try container.encodeIfPresent(pattern, forKey: .pattern)
        try container.encodeIfPresent(permissions, forKey: .permissions)
        try container.encodeIfPresent(_required, forKey: ._required)
        try container.encodeIfPresent(scope, forKey: .scope)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(union, forKey: .union)
        try container.encodeIfPresent(unique, forKey: .unique)
    }



}

