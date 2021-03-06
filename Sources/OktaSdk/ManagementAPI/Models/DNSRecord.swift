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

public struct DNSRecord: Codable, Hashable {

    public var expiration: String?
    public var fqdn: String?
    public var recordType: DNSRecordType?
    public var values: [String]?

    public init(expiration: String? = nil, fqdn: String? = nil, recordType: DNSRecordType? = nil, values: [String]? = nil) {
        self.expiration = expiration
        self.fqdn = fqdn
        self.recordType = recordType
        self.values = values
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case expiration
        case fqdn
        case recordType
        case values
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(expiration, forKey: .expiration)
        try container.encodeIfPresent(fqdn, forKey: .fqdn)
        try container.encodeIfPresent(recordType, forKey: .recordType)
        try container.encodeIfPresent(values, forKey: .values)
    }



}

