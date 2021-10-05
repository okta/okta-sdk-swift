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

public struct AppLink: Codable, Hashable {

    public var appAssignmentId: String?
    public var appInstanceId: String?
    public var appName: String?
    public var credentialsSetup: Bool?
    public var hidden: Bool?
    public var id: String?
    public var label: String?
    public var linkUrl: String?
    public var logoUrl: String?
    public var sortOrder: Int?

    public init(appAssignmentId: String? = nil, appInstanceId: String? = nil, appName: String? = nil, credentialsSetup: Bool? = nil, hidden: Bool? = nil, id: String? = nil, label: String? = nil, linkUrl: String? = nil, logoUrl: String? = nil, sortOrder: Int? = nil) {
        self.appAssignmentId = appAssignmentId
        self.appInstanceId = appInstanceId
        self.appName = appName
        self.credentialsSetup = credentialsSetup
        self.hidden = hidden
        self.id = id
        self.label = label
        self.linkUrl = linkUrl
        self.logoUrl = logoUrl
        self.sortOrder = sortOrder
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appAssignmentId
        case appInstanceId
        case appName
        case credentialsSetup
        case hidden
        case id
        case label
        case linkUrl
        case logoUrl
        case sortOrder
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appAssignmentId, forKey: .appAssignmentId)
        try container.encodeIfPresent(appInstanceId, forKey: .appInstanceId)
        try container.encodeIfPresent(appName, forKey: .appName)
        try container.encodeIfPresent(credentialsSetup, forKey: .credentialsSetup)
        try container.encodeIfPresent(hidden, forKey: .hidden)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(label, forKey: .label)
        try container.encodeIfPresent(linkUrl, forKey: .linkUrl)
        try container.encodeIfPresent(logoUrl, forKey: .logoUrl)
        try container.encodeIfPresent(sortOrder, forKey: .sortOrder)
    }



}
