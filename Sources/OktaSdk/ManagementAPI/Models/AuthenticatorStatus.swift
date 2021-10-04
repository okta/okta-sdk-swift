//
// AuthenticatorStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public enum AuthenticatorStatus: String, Codable, CaseIterable, OktaClientArgument {
    case active = "ACTIVE"
    case inactive = "INACTIVE"

    var stringValue: String { rawValue }
}

