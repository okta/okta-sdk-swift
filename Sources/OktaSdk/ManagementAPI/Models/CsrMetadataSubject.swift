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

public struct CsrMetadataSubject: Codable, Hashable {

    public var commonName: String?
    public var countryName: String?
    public var localityName: String?
    public var organizationalUnitName: String?
    public var organizationName: String?
    public var stateOrProvinceName: String?

    public init(commonName: String? = nil, countryName: String? = nil, localityName: String? = nil, organizationalUnitName: String? = nil, organizationName: String? = nil, stateOrProvinceName: String? = nil) {
        self.commonName = commonName
        self.countryName = countryName
        self.localityName = localityName
        self.organizationalUnitName = organizationalUnitName
        self.organizationName = organizationName
        self.stateOrProvinceName = stateOrProvinceName
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case commonName
        case countryName
        case localityName
        case organizationalUnitName
        case organizationName
        case stateOrProvinceName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(commonName, forKey: .commonName)
        try container.encodeIfPresent(countryName, forKey: .countryName)
        try container.encodeIfPresent(localityName, forKey: .localityName)
        try container.encodeIfPresent(organizationalUnitName, forKey: .organizationalUnitName)
        try container.encodeIfPresent(organizationName, forKey: .organizationName)
        try container.encodeIfPresent(stateOrProvinceName, forKey: .stateOrProvinceName)
    }



}

