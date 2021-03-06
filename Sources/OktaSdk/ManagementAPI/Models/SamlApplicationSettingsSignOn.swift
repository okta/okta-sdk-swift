//
// Copyright (c) 2021-Present, Okta, Inc. and/or its affiliates. All rights reserved.
// The Okta software accompanied by this notice is provided pursuant to the Apache License, Version 2.0 (the "License.")
//
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0.
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//
// See the License for the specific language governing permissions and limitations under the License.
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SamlApplicationSettingsSignOn: Codable, Hashable {

    public var acsEndpoints: [AcsEndpoint]?
    public var allowMultipleAcsEndpoints: Bool?
    public var assertionSigned: Bool?
    public var attributeStatements: [SamlAttributeStatement]?
    public var audience: String?
    public var audienceOverride: String?
    public var authnContextClassRef: String?
    public var defaultRelayState: String?
    public var destination: String?
    public var destinationOverride: String?
    public var digestAlgorithm: String?
    public var honorForceAuthn: Bool?
    public var idpIssuer: String?
    public var inlineHooks: [SignOnInlineHook]?
    public var recipient: String?
    public var recipientOverride: String?
    public var requestCompressed: Bool?
    public var responseSigned: Bool?
    public var signatureAlgorithm: String?
    public var slo: SingleLogout?
    public var spCertificate: SpCertificate?
    public var spIssuer: String?
    public var ssoAcsUrl: String?
    public var ssoAcsUrlOverride: String?
    public var subjectNameIdFormat: String?
    public var subjectNameIdTemplate: String?

    public init(acsEndpoints: [AcsEndpoint]? = nil, allowMultipleAcsEndpoints: Bool? = nil, assertionSigned: Bool? = nil, attributeStatements: [SamlAttributeStatement]? = nil, audience: String? = nil, audienceOverride: String? = nil, authnContextClassRef: String? = nil, defaultRelayState: String? = nil, destination: String? = nil, destinationOverride: String? = nil, digestAlgorithm: String? = nil, honorForceAuthn: Bool? = nil, idpIssuer: String? = nil, inlineHooks: [SignOnInlineHook]? = nil, recipient: String? = nil, recipientOverride: String? = nil, requestCompressed: Bool? = nil, responseSigned: Bool? = nil, signatureAlgorithm: String? = nil, slo: SingleLogout? = nil, spCertificate: SpCertificate? = nil, spIssuer: String? = nil, ssoAcsUrl: String? = nil, ssoAcsUrlOverride: String? = nil, subjectNameIdFormat: String? = nil, subjectNameIdTemplate: String? = nil) {
        self.acsEndpoints = acsEndpoints
        self.allowMultipleAcsEndpoints = allowMultipleAcsEndpoints
        self.assertionSigned = assertionSigned
        self.attributeStatements = attributeStatements
        self.audience = audience
        self.audienceOverride = audienceOverride
        self.authnContextClassRef = authnContextClassRef
        self.defaultRelayState = defaultRelayState
        self.destination = destination
        self.destinationOverride = destinationOverride
        self.digestAlgorithm = digestAlgorithm
        self.honorForceAuthn = honorForceAuthn
        self.idpIssuer = idpIssuer
        self.inlineHooks = inlineHooks
        self.recipient = recipient
        self.recipientOverride = recipientOverride
        self.requestCompressed = requestCompressed
        self.responseSigned = responseSigned
        self.signatureAlgorithm = signatureAlgorithm
        self.slo = slo
        self.spCertificate = spCertificate
        self.spIssuer = spIssuer
        self.ssoAcsUrl = ssoAcsUrl
        self.ssoAcsUrlOverride = ssoAcsUrlOverride
        self.subjectNameIdFormat = subjectNameIdFormat
        self.subjectNameIdTemplate = subjectNameIdTemplate
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case acsEndpoints
        case allowMultipleAcsEndpoints
        case assertionSigned
        case attributeStatements
        case audience
        case audienceOverride
        case authnContextClassRef
        case defaultRelayState
        case destination
        case destinationOverride
        case digestAlgorithm
        case honorForceAuthn
        case idpIssuer
        case inlineHooks
        case recipient
        case recipientOverride
        case requestCompressed
        case responseSigned
        case signatureAlgorithm
        case slo
        case spCertificate
        case spIssuer
        case ssoAcsUrl
        case ssoAcsUrlOverride
        case subjectNameIdFormat
        case subjectNameIdTemplate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(acsEndpoints, forKey: .acsEndpoints)
        try container.encodeIfPresent(allowMultipleAcsEndpoints, forKey: .allowMultipleAcsEndpoints)
        try container.encodeIfPresent(assertionSigned, forKey: .assertionSigned)
        try container.encodeIfPresent(attributeStatements, forKey: .attributeStatements)
        try container.encodeIfPresent(audience, forKey: .audience)
        try container.encodeIfPresent(audienceOverride, forKey: .audienceOverride)
        try container.encodeIfPresent(authnContextClassRef, forKey: .authnContextClassRef)
        try container.encodeIfPresent(defaultRelayState, forKey: .defaultRelayState)
        try container.encodeIfPresent(destination, forKey: .destination)
        try container.encodeIfPresent(destinationOverride, forKey: .destinationOverride)
        try container.encodeIfPresent(digestAlgorithm, forKey: .digestAlgorithm)
        try container.encodeIfPresent(honorForceAuthn, forKey: .honorForceAuthn)
        try container.encodeIfPresent(idpIssuer, forKey: .idpIssuer)
        try container.encodeIfPresent(inlineHooks, forKey: .inlineHooks)
        try container.encodeIfPresent(recipient, forKey: .recipient)
        try container.encodeIfPresent(recipientOverride, forKey: .recipientOverride)
        try container.encodeIfPresent(requestCompressed, forKey: .requestCompressed)
        try container.encodeIfPresent(responseSigned, forKey: .responseSigned)
        try container.encodeIfPresent(signatureAlgorithm, forKey: .signatureAlgorithm)
        try container.encodeIfPresent(slo, forKey: .slo)
        try container.encodeIfPresent(spCertificate, forKey: .spCertificate)
        try container.encodeIfPresent(spIssuer, forKey: .spIssuer)
        try container.encodeIfPresent(ssoAcsUrl, forKey: .ssoAcsUrl)
        try container.encodeIfPresent(ssoAcsUrlOverride, forKey: .ssoAcsUrlOverride)
        try container.encodeIfPresent(subjectNameIdFormat, forKey: .subjectNameIdFormat)
        try container.encodeIfPresent(subjectNameIdTemplate, forKey: .subjectNameIdTemplate)
    }



}

