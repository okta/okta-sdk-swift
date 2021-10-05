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

public struct SamlAttributeStatement: Codable, Hashable {

    public var name: String?
    public var namespace: String?
    public var type: String?
    public var filterType: String?
    public var filterValue: String?
    public var values: [String]?

    public init(name: String? = nil, namespace: String? = nil, type: String? = nil, filterType: String? = nil, filterValue: String? = nil, values: [String]? = nil) {
        self.name = name
        self.namespace = namespace
        self.type = type
        self.filterType = filterType
        self.filterValue = filterValue
        self.values = values
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case namespace
        case type
        case filterType
        case filterValue
        case values
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(namespace, forKey: .namespace)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(filterType, forKey: .filterType)
        try container.encodeIfPresent(filterValue, forKey: .filterValue)
        try container.encodeIfPresent(values, forKey: .values)
    }



}

