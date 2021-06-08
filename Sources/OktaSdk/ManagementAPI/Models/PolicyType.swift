//
// PolicyType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public enum PolicyType: String, Codable, CaseIterable {
    case oauthAuthorizationPolicy = "OAUTH_AUTHORIZATION_POLICY"
    case oktaSignOn = "OKTA_SIGN_ON"
    case password = "PASSWORD"
    case idpDiscovery = "IDP_DISCOVERY"
    case oktaProfileEnrollment = "Okta:ProfileEnrollment"
}
