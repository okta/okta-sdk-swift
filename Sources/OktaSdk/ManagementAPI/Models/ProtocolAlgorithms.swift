//
// ProtocolAlgorithms.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct ProtocolAlgorithms: Codable, Hashable {

    public var request: ProtocolAlgorithmType?
    public var response: ProtocolAlgorithmType?

    public init(request: ProtocolAlgorithmType? = nil, response: ProtocolAlgorithmType? = nil) {
        self.request = request
        self.response = response
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case request
        case response
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(request, forKey: .request)
        try container.encodeIfPresent(response, forKey: .response)
    }



}

