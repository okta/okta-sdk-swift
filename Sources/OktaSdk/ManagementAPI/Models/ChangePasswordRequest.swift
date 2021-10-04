//
// ChangePasswordRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct ChangePasswordRequest: Codable, Hashable {

    public var newPassword: PasswordCredential?
    public var oldPassword: PasswordCredential?

    public init(newPassword: PasswordCredential? = nil, oldPassword: PasswordCredential? = nil) {
        self.newPassword = newPassword
        self.oldPassword = oldPassword
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case newPassword
        case oldPassword
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(newPassword, forKey: .newPassword)
        try container.encodeIfPresent(oldPassword, forKey: .oldPassword)
    }



}

