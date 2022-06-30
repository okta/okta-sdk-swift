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

public struct PasswordPolicyRuleActions: Codable, Hashable {

    public var enroll: PolicyRuleActionsEnroll?
    public var idp: IdpPolicyRuleAction?
    public var passwordChange: PasswordPolicyRuleAction?
    public var selfServicePasswordReset: PasswordPolicyRuleAction?
    public var selfServiceUnlock: PasswordPolicyRuleAction?
    public var signon: OktaSignOnPolicyRuleSignonActions?

    public init(enroll: PolicyRuleActionsEnroll? = nil, idp: IdpPolicyRuleAction? = nil, passwordChange: PasswordPolicyRuleAction? = nil, selfServicePasswordReset: PasswordPolicyRuleAction? = nil, selfServiceUnlock: PasswordPolicyRuleAction? = nil, signon: OktaSignOnPolicyRuleSignonActions? = nil) {
        self.enroll = enroll
        self.idp = idp
        self.passwordChange = passwordChange
        self.selfServicePasswordReset = selfServicePasswordReset
        self.selfServiceUnlock = selfServiceUnlock
        self.signon = signon
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enroll
        case idp
        case passwordChange
        case selfServicePasswordReset
        case selfServiceUnlock
        case signon
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enroll, forKey: .enroll)
        try container.encodeIfPresent(idp, forKey: .idp)
        try container.encodeIfPresent(passwordChange, forKey: .passwordChange)
        try container.encodeIfPresent(selfServicePasswordReset, forKey: .selfServicePasswordReset)
        try container.encodeIfPresent(selfServiceUnlock, forKey: .selfServiceUnlock)
        try container.encodeIfPresent(signon, forKey: .signon)
    }



}

