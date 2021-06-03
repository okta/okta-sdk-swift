//
// FactorStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public enum FactorStatus: String, Codable, CaseIterable {
    case pendingActivation = "PENDING_ACTIVATION"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case notSetup = "NOT_SETUP"
    case enrolled = "ENROLLED"
    case disabled = "DISABLED"
    case expired = "EXPIRED"
}
