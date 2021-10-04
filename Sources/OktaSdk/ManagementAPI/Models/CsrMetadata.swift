//
// CsrMetadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct CsrMetadata: Codable, Hashable {

    public var subject: CsrMetadataSubject?
    public var subjectAltNames: CsrMetadataSubjectAltNames?

    public init(subject: CsrMetadataSubject? = nil, subjectAltNames: CsrMetadataSubjectAltNames? = nil) {
        self.subject = subject
        self.subjectAltNames = subjectAltNames
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case subject
        case subjectAltNames
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(subjectAltNames, forKey: .subjectAltNames)
    }



}

