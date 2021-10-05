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

public struct PasswordPolicyAuthenticationProviderCondition: Codable, Hashable {

    public enum Provider: String, Codable, CaseIterable {
        case activeDirectory = "ACTIVE_DIRECTORY"
        case any = "ANY"
        case ldap = "LDAP"
        case okta = "OKTA"
    }
    public var include: [String]?
    public var provider: Provider?

    public init(include: [String]? = nil, provider: Provider? = nil) {
        self.include = include
        self.provider = provider
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case include
        case provider
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(include, forKey: .include)
        try container.encodeIfPresent(provider, forKey: .provider)
    }



}

