//
// Session.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct Session: Codable, Hashable {

    public var links: [String: AnyCodable]?
    public var amr: [SessionAuthenticationMethod]?
    public var createdAt: Date?
    public var expiresAt: Date?
    public var id: String?
    public var idp: SessionIdentityProvider?
    public var lastFactorVerification: Date?
    public var lastPasswordVerification: Date?
    public var login: String?
    public var status: SessionStatus?
    public var userId: String?

    public init(links: [String: AnyCodable]? = nil, amr: [SessionAuthenticationMethod]? = nil, createdAt: Date? = nil, expiresAt: Date? = nil, id: String? = nil, idp: SessionIdentityProvider? = nil, lastFactorVerification: Date? = nil, lastPasswordVerification: Date? = nil, login: String? = nil, status: SessionStatus? = nil, userId: String? = nil) {
        self.links = links
        self.amr = amr
        self.createdAt = createdAt
        self.expiresAt = expiresAt
        self.id = id
        self.idp = idp
        self.lastFactorVerification = lastFactorVerification
        self.lastPasswordVerification = lastPasswordVerification
        self.login = login
        self.status = status
        self.userId = userId
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case amr
        case createdAt
        case expiresAt
        case id
        case idp
        case lastFactorVerification
        case lastPasswordVerification
        case login
        case status
        case userId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(amr, forKey: .amr)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(expiresAt, forKey: .expiresAt)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(idp, forKey: .idp)
        try container.encodeIfPresent(lastFactorVerification, forKey: .lastFactorVerification)
        try container.encodeIfPresent(lastPasswordVerification, forKey: .lastPasswordVerification)
        try container.encodeIfPresent(login, forKey: .login)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(userId, forKey: .userId)
    }



}

