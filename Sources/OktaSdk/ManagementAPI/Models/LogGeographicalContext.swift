//
// LogGeographicalContext.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct LogGeographicalContext: Codable, Hashable {

    public var city: String?
    public var country: String?
    public var geolocation: LogGeolocation?
    public var postalCode: String?
    public var state: String?

    public init(city: String? = nil, country: String? = nil, geolocation: LogGeolocation? = nil, postalCode: String? = nil, state: String? = nil) {
        self.city = city
        self.country = country
        self.geolocation = geolocation
        self.postalCode = postalCode
        self.state = state
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case city
        case country
        case geolocation
        case postalCode
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(geolocation, forKey: .geolocation)
        try container.encodeIfPresent(postalCode, forKey: .postalCode)
        try container.encodeIfPresent(state, forKey: .state)
    }



}

