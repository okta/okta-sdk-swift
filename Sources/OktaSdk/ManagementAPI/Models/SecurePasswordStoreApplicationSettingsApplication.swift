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

public struct SecurePasswordStoreApplicationSettingsApplication: Codable, Hashable {

    public var optionalField1: String?
    public var optionalField1Value: String?
    public var optionalField2: String?
    public var optionalField2Value: String?
    public var optionalField3: String?
    public var optionalField3Value: String?
    public var passwordField: String?
    public var url: String?
    public var usernameField: String?

    public init(optionalField1: String? = nil, optionalField1Value: String? = nil, optionalField2: String? = nil, optionalField2Value: String? = nil, optionalField3: String? = nil, optionalField3Value: String? = nil, passwordField: String? = nil, url: String? = nil, usernameField: String? = nil) {
        self.optionalField1 = optionalField1
        self.optionalField1Value = optionalField1Value
        self.optionalField2 = optionalField2
        self.optionalField2Value = optionalField2Value
        self.optionalField3 = optionalField3
        self.optionalField3Value = optionalField3Value
        self.passwordField = passwordField
        self.url = url
        self.usernameField = usernameField
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case optionalField1
        case optionalField1Value
        case optionalField2
        case optionalField2Value
        case optionalField3
        case optionalField3Value
        case passwordField
        case url
        case usernameField
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(optionalField1, forKey: .optionalField1)
        try container.encodeIfPresent(optionalField1Value, forKey: .optionalField1Value)
        try container.encodeIfPresent(optionalField2, forKey: .optionalField2)
        try container.encodeIfPresent(optionalField2Value, forKey: .optionalField2Value)
        try container.encodeIfPresent(optionalField3, forKey: .optionalField3)
        try container.encodeIfPresent(optionalField3Value, forKey: .optionalField3Value)
        try container.encodeIfPresent(passwordField, forKey: .passwordField)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(usernameField, forKey: .usernameField)
    }



}
