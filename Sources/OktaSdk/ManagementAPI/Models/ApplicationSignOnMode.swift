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

public enum ApplicationSignOnMode: String, Codable, CaseIterable, OktaClientArgument {
    case autoLogin = "AUTO_LOGIN"
    case basicAuth = "BASIC_AUTH"
    case bookmark = "BOOKMARK"
    case browserPlugin = "BROWSER_PLUGIN"
    case openidConnect = "OPENID_CONNECT"
    case saml11 = "SAML_1_1"
    case saml20 = "SAML_2_0"
    case securePasswordStore = "SECURE_PASSWORD_STORE"
    case wsFederation = "WS_FEDERATION"

    var stringValue: String { rawValue }
}

