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

/** Links to resources related to this email preview. */
public struct EmailPreviewLinks: Codable, Hashable {

    public var _self: HrefObject?
    public var contentSource: HrefObject?
    public var template: HrefObject?
    public var test: HrefObject?
    public var defaultContent: HrefObject?

    public init(_self: HrefObject? = nil, contentSource: HrefObject? = nil, template: HrefObject? = nil, test: HrefObject? = nil, defaultContent: HrefObject? = nil) {
        self._self = _self
        self.contentSource = contentSource
        self.template = template
        self.test = test
        self.defaultContent = defaultContent
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _self = "self"
        case contentSource
        case template
        case test
        case defaultContent
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_self, forKey: ._self)
        try container.encodeIfPresent(contentSource, forKey: .contentSource)
        try container.encodeIfPresent(template, forKey: .template)
        try container.encodeIfPresent(test, forKey: .test)
        try container.encodeIfPresent(defaultContent, forKey: .defaultContent)
    }



}
