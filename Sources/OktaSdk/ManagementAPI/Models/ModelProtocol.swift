//
// ModelProtocol.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct ModelProtocol: Codable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case saml2 = "SAML2"
        case oidc = "OIDC"
        case oauth2 = "OAUTH2"
        case mtls = "MTLS"
    }
    public var algorithms: ProtocolAlgorithms?
    public var credentials: IdentityProviderCredentials?
    public var endpoints: ProtocolEndpoints?
    public var issuer: ProtocolEndpoint?
    public var relayState: ProtocolRelayState?
    public var scopes: [String]?
    public var settings: ProtocolSettings?
    public var type: ModelType?

    public init(algorithms: ProtocolAlgorithms? = nil, credentials: IdentityProviderCredentials? = nil, endpoints: ProtocolEndpoints? = nil, issuer: ProtocolEndpoint? = nil, relayState: ProtocolRelayState? = nil, scopes: [String]? = nil, settings: ProtocolSettings? = nil, type: ModelType? = nil) {
        self.algorithms = algorithms
        self.credentials = credentials
        self.endpoints = endpoints
        self.issuer = issuer
        self.relayState = relayState
        self.scopes = scopes
        self.settings = settings
        self.type = type
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case algorithms
        case credentials
        case endpoints
        case issuer
        case relayState
        case scopes
        case settings
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(algorithms, forKey: .algorithms)
        try container.encodeIfPresent(credentials, forKey: .credentials)
        try container.encodeIfPresent(endpoints, forKey: .endpoints)
        try container.encodeIfPresent(issuer, forKey: .issuer)
        try container.encodeIfPresent(relayState, forKey: .relayState)
        try container.encodeIfPresent(scopes, forKey: .scopes)
        try container.encodeIfPresent(settings, forKey: .settings)
        try container.encodeIfPresent(type, forKey: .type)
    }



}

