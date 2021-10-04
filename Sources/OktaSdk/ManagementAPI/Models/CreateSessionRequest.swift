//
// CreateSessionRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct CreateSessionRequest: Codable, Hashable {

    public var sessionToken: String?

    public init(sessionToken: String? = nil) {
        self.sessionToken = sessionToken
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sessionToken
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(sessionToken, forKey: .sessionToken)
    }



}

