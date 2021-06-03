//
// NetworkZoneLocation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct NetworkZoneLocation: Codable, Hashable {

    public var country: String?
    public var region: String?

    public init(country: String? = nil, region: String? = nil) {
        self.country = country
        self.region = region
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case country
        case region
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(region, forKey: .region)
    }



}
