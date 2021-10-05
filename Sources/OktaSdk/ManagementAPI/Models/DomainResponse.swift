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

public struct DomainResponse: Codable, Hashable {

    public enum CertificateSourceType: String, Codable, CaseIterable {
        case manual = "MANUAL"
    }
    public enum ValidationStatus: String, Codable, CaseIterable {
        case notStarted = "NOT_STARTED"
        case inProgress = "IN_PROGRESS"
        case verified = "VERIFIED"
        case completed = "COMPLETED"
    }
    public var certificateSourceType: CertificateSourceType?
    public var dnsRecords: [DNSRecord]?
    public var domain: String?
    public var id: String?
    public var links: DomainLinks?
    public var publicCertificate: DomainCertificateMetadata?
    public var validationStatus: ValidationStatus?

    public init(certificateSourceType: CertificateSourceType? = nil, dnsRecords: [DNSRecord]? = nil, domain: String? = nil, id: String? = nil, links: DomainLinks? = nil, publicCertificate: DomainCertificateMetadata? = nil, validationStatus: ValidationStatus? = nil) {
        self.certificateSourceType = certificateSourceType
        self.dnsRecords = dnsRecords
        self.domain = domain
        self.id = id
        self.links = links
        self.publicCertificate = publicCertificate
        self.validationStatus = validationStatus
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case certificateSourceType
        case dnsRecords
        case domain
        case id
        case links = "_links"
        case publicCertificate
        case validationStatus
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(certificateSourceType, forKey: .certificateSourceType)
        try container.encodeIfPresent(dnsRecords, forKey: .dnsRecords)
        try container.encodeIfPresent(domain, forKey: .domain)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(publicCertificate, forKey: .publicCertificate)
        try container.encodeIfPresent(validationStatus, forKey: .validationStatus)
    }



}

