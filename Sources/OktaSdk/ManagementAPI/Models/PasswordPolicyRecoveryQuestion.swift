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

public struct PasswordPolicyRecoveryQuestion: Codable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case active = "ACTIVE"
        case inactive = "INACTIVE"
    }
    public var properties: PasswordPolicyRecoveryQuestionProperties?
    public var status: Status?

    public init(properties: PasswordPolicyRecoveryQuestionProperties? = nil, status: Status? = nil) {
        self.properties = properties
        self.status = status
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case properties
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(properties, forKey: .properties)
        try container.encodeIfPresent(status, forKey: .status)
    }



}

