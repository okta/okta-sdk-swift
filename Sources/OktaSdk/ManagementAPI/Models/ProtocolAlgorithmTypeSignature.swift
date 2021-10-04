//
// ProtocolAlgorithmTypeSignature.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct ProtocolAlgorithmTypeSignature: Codable, Hashable {

    public enum Scope: String, Codable, CaseIterable {
        case response = "RESPONSE"
        case token = "TOKEN"
        case any = "ANY"
        case request = "REQUEST"
        case _none = "NONE"
    }
    public var algorithm: String?
    public var scope: Scope?

    public init(algorithm: String? = nil, scope: Scope? = nil) {
        self.algorithm = algorithm
        self.scope = scope
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case algorithm
        case scope
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(algorithm, forKey: .algorithm)
        try container.encodeIfPresent(scope, forKey: .scope)
    }



}

