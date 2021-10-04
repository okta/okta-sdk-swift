//
// CallUserFactorProfile.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct CallUserFactorProfile: Codable, Hashable {

    public var phoneExtension: String?
    public var phoneNumber: String?

    public init(phoneExtension: String? = nil, phoneNumber: String? = nil) {
        self.phoneExtension = phoneExtension
        self.phoneNumber = phoneNumber
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case phoneExtension
        case phoneNumber
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(phoneExtension, forKey: .phoneExtension)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
    }



}

