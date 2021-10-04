//
// AuthorizationServerCredentialsSigningConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct AuthorizationServerCredentialsSigningConfig: Codable, Hashable {

    public var kid: String?
    public var lastRotated: Date?
    public var nextRotation: Date?
    public var rotationMode: AuthorizationServerCredentialsRotationMode?
    public var use: AuthorizationServerCredentialsUse?

    public init(kid: String? = nil, lastRotated: Date? = nil, nextRotation: Date? = nil, rotationMode: AuthorizationServerCredentialsRotationMode? = nil, use: AuthorizationServerCredentialsUse? = nil) {
        self.kid = kid
        self.lastRotated = lastRotated
        self.nextRotation = nextRotation
        self.rotationMode = rotationMode
        self.use = use
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case kid
        case lastRotated
        case nextRotation
        case rotationMode
        case use
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(kid, forKey: .kid)
        try container.encodeIfPresent(lastRotated, forKey: .lastRotated)
        try container.encodeIfPresent(nextRotation, forKey: .nextRotation)
        try container.encodeIfPresent(rotationMode, forKey: .rotationMode)
        try container.encodeIfPresent(use, forKey: .use)
    }



}

