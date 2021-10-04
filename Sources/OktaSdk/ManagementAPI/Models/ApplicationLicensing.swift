//
// ApplicationLicensing.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct ApplicationLicensing: Codable, Hashable {

    public var seatCount: Int?

    public init(seatCount: Int? = nil) {
        self.seatCount = seatCount
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case seatCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(seatCount, forKey: .seatCount)
    }



}

