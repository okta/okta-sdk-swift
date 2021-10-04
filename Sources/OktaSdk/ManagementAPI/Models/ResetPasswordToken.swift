//
// ResetPasswordToken.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct ResetPasswordToken: Codable, Hashable {

    public var resetPasswordUrl: String?

    public init(resetPasswordUrl: String? = nil) {
        self.resetPasswordUrl = resetPasswordUrl
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case resetPasswordUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(resetPasswordUrl, forKey: .resetPasswordUrl)
    }



}

