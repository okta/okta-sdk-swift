//
// DNSRecord.swift
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

