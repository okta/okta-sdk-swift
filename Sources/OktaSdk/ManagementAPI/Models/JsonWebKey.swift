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

public struct JsonWebKey: Codable, Hashable {

    public var links: [String: AnyCodable]?
    public var alg: String?
    public var created: Date?
    public var e: String?
    public var expiresAt: Date?
    public var keyOps: [String]?
    public var kid: String?
    public var kty: String?
    public var lastUpdated: Date?
    public var n: String?
    public var status: String?
    public var use: String?
    public var x5c: [String]?
    public var x5t: String?
    public var x5tS256: String?
    public var x5u: String?

    public init(links: [String: AnyCodable]? = nil, alg: String? = nil, created: Date? = nil, e: String? = nil, expiresAt: Date? = nil, keyOps: [String]? = nil, kid: String? = nil, kty: String? = nil, lastUpdated: Date? = nil, n: String? = nil, status: String? = nil, use: String? = nil, x5c: [String]? = nil, x5t: String? = nil, x5tS256: String? = nil, x5u: String? = nil) {
        self.links = links
        self.alg = alg
        self.created = created
        self.e = e
        self.expiresAt = expiresAt
        self.keyOps = keyOps
        self.kid = kid
        self.kty = kty
        self.lastUpdated = lastUpdated
        self.n = n
        self.status = status
        self.use = use
        self.x5c = x5c
        self.x5t = x5t
        self.x5tS256 = x5tS256
        self.x5u = x5u
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case alg
        case created
        case e
        case expiresAt
        case keyOps = "key_ops"
        case kid
        case kty
        case lastUpdated
        case n
        case status
        case use
        case x5c
        case x5t
        case x5tS256 = "x5t#S256"
        case x5u
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(alg, forKey: .alg)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(e, forKey: .e)
        try container.encodeIfPresent(expiresAt, forKey: .expiresAt)
        try container.encodeIfPresent(keyOps, forKey: .keyOps)
        try container.encodeIfPresent(kid, forKey: .kid)
        try container.encodeIfPresent(kty, forKey: .kty)
        try container.encodeIfPresent(lastUpdated, forKey: .lastUpdated)
        try container.encodeIfPresent(n, forKey: .n)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(use, forKey: .use)
        try container.encodeIfPresent(x5c, forKey: .x5c)
        try container.encodeIfPresent(x5t, forKey: .x5t)
        try container.encodeIfPresent(x5tS256, forKey: .x5tS256)
        try container.encodeIfPresent(x5u, forKey: .x5u)
    }



}

