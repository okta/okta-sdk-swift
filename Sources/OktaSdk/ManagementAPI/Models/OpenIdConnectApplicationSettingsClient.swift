//
// OpenIdConnectApplicationSettingsClient.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct OpenIdConnectApplicationSettingsClient: Codable, Hashable {

    public var applicationType: OpenIdConnectApplicationType?
    public var clientUri: String?
    public var consentMethod: OpenIdConnectApplicationConsentMethod?
    public var grantTypes: [OAuthGrantType]?
    public var idpInitiatedLogin: OpenIdConnectApplicationIdpInitiatedLogin?
    public var initiateLoginUri: String?
    public var issuerMode: OpenIdConnectApplicationIssuerMode?
    public var jwks: OpenIdConnectApplicationSettingsClientKeys?
    public var logoUri: String?
    public var policyUri: String?
    public var postLogoutRedirectUris: [String]?
    public var redirectUris: [String]?
    public var refreshToken: OpenIdConnectApplicationSettingsRefreshToken?
    public var responseTypes: [OAuthResponseType]?
    public var tosUri: String?
    public var wildcardRedirect: String?

    public init(applicationType: OpenIdConnectApplicationType? = nil, clientUri: String? = nil, consentMethod: OpenIdConnectApplicationConsentMethod? = nil, grantTypes: [OAuthGrantType]? = nil, idpInitiatedLogin: OpenIdConnectApplicationIdpInitiatedLogin? = nil, initiateLoginUri: String? = nil, issuerMode: OpenIdConnectApplicationIssuerMode? = nil, jwks: OpenIdConnectApplicationSettingsClientKeys? = nil, logoUri: String? = nil, policyUri: String? = nil, postLogoutRedirectUris: [String]? = nil, redirectUris: [String]? = nil, refreshToken: OpenIdConnectApplicationSettingsRefreshToken? = nil, responseTypes: [OAuthResponseType]? = nil, tosUri: String? = nil, wildcardRedirect: String? = nil) {
        self.applicationType = applicationType
        self.clientUri = clientUri
        self.consentMethod = consentMethod
        self.grantTypes = grantTypes
        self.idpInitiatedLogin = idpInitiatedLogin
        self.initiateLoginUri = initiateLoginUri
        self.issuerMode = issuerMode
        self.jwks = jwks
        self.logoUri = logoUri
        self.policyUri = policyUri
        self.postLogoutRedirectUris = postLogoutRedirectUris
        self.redirectUris = redirectUris
        self.refreshToken = refreshToken
        self.responseTypes = responseTypes
        self.tosUri = tosUri
        self.wildcardRedirect = wildcardRedirect
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case applicationType = "application_type"
        case clientUri = "client_uri"
        case consentMethod = "consent_method"
        case grantTypes = "grant_types"
        case idpInitiatedLogin = "idp_initiated_login"
        case initiateLoginUri = "initiate_login_uri"
        case issuerMode = "issuer_mode"
        case jwks
        case logoUri = "logo_uri"
        case policyUri = "policy_uri"
        case postLogoutRedirectUris = "post_logout_redirect_uris"
        case redirectUris = "redirect_uris"
        case refreshToken = "refresh_token"
        case responseTypes = "response_types"
        case tosUri = "tos_uri"
        case wildcardRedirect = "wildcard_redirect"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(applicationType, forKey: .applicationType)
        try container.encodeIfPresent(clientUri, forKey: .clientUri)
        try container.encodeIfPresent(consentMethod, forKey: .consentMethod)
        try container.encodeIfPresent(grantTypes, forKey: .grantTypes)
        try container.encodeIfPresent(idpInitiatedLogin, forKey: .idpInitiatedLogin)
        try container.encodeIfPresent(initiateLoginUri, forKey: .initiateLoginUri)
        try container.encodeIfPresent(issuerMode, forKey: .issuerMode)
        try container.encodeIfPresent(jwks, forKey: .jwks)
        try container.encodeIfPresent(logoUri, forKey: .logoUri)
        try container.encodeIfPresent(policyUri, forKey: .policyUri)
        try container.encodeIfPresent(postLogoutRedirectUris, forKey: .postLogoutRedirectUris)
        try container.encodeIfPresent(redirectUris, forKey: .redirectUris)
        try container.encodeIfPresent(refreshToken, forKey: .refreshToken)
        try container.encodeIfPresent(responseTypes, forKey: .responseTypes)
        try container.encodeIfPresent(tosUri, forKey: .tosUri)
        try container.encodeIfPresent(wildcardRedirect, forKey: .wildcardRedirect)
    }



}
