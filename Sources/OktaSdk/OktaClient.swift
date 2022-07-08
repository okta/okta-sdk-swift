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

import Foundation

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public let Version = "0.1.0"

enum OktaClientError: Error {
    case invalidUrl
    case invalidResponse
    case invalidBody
    case statusCode(_ statusCode: Int)
    case unknown
}

fileprivate var warning: Bool = {
    print("""
        
        ************************ WARNING ************************
        ** Embedding SSWS tokens within production / App Store **
        ** applications is unsafe and not recommended.         **
        ** Please use this SDK with caution.                   **
        *********************************************************
        
        """)
    return true
}()

/// The class describing an active client used to interact with an Okta org.
open class OktaClient: OktaClientAPI {
    /// The configuration used with this client.
    public let configuration: Configuration

    internal let context: OktaClient.APIContext

    public lazy var agentPools: OktaClient.AgentPoolsAPI = { .init(context: self.context) } ()
    public lazy var apiToken: OktaClient.ApiTokenAPI = { .init(context: self.context) } ()
    public lazy var application: OktaClient.ApplicationAPI = { .init(context: self.context) } ()
    public lazy var authenticator: OktaClient.AuthenticatorAPI = { .init(context: self.context) } ()
    public lazy var authorizationServer: OktaClient.AuthorizationServerAPI = { .init(context: self.context) } ()
    public lazy var behavior: OktaClient.BehaviorAPI = { .init(context: self.context) } ()
    public lazy var captcha: OktaClient.CAPTCHAAPI = { .init(context: self.context) } ()
    public lazy var customization: OktaClient.CustomizationAPI = { .init(context: self.context) } ()
    public lazy var domain: OktaClient.DomainAPI = { .init(context: self.context) } ()
    public lazy var emailDomain: OktaClient.EmailDomainAPI = { .init(context: self.context) } ()
    public lazy var eventHook: OktaClient.EventHookAPI = { .init(context: self.context) } ()
    public lazy var feature: OktaClient.FeatureAPI = { .init(context: self.context) } ()
    public lazy var group: OktaClient.GroupAPI = { .init(context: self.context) } ()
    public lazy var identityProvider: OktaClient.IdentityProviderAPI = { .init(context: self.context) } ()
    public lazy var inlineHook: OktaClient.InlineHookAPI = { .init(context: self.context) } ()
    public lazy var linkedObject: OktaClient.LinkedObjectAPI = { .init(context: self.context) } ()
    public lazy var networkZone: OktaClient.NetworkZoneAPI = { .init(context: self.context) } ()
    public lazy var orgSetting: OktaClient.OrgSettingAPI = { .init(context: self.context) } ()
    public lazy var policy: OktaClient.PolicyAPI = { .init(context: self.context) } ()
    public lazy var principalRateLimit: OktaClient.PrincipalRateLimitAPI = { .init(context: self.context) } ()
    public lazy var profileMapping: OktaClient.ProfileMappingAPI = { .init(context: self.context) } ()
    public lazy var schema: OktaClient.SchemaAPI = { .init(context: self.context) } ()
    public lazy var session: OktaClient.SessionAPI = { .init(context: self.context) } ()
    public lazy var subscription: OktaClient.SubscriptionAPI = { .init(context: self.context) } ()
    public lazy var systemLog: OktaClient.SystemLogAPI = { .init(context: self.context) } ()
    public lazy var template: OktaClient.TemplateAPI = { .init(context: self.context) } ()
    public lazy var threatInsight: OktaClient.ThreatInsightAPI = { .init(context: self.context) } ()
    public lazy var trustedOrigin: OktaClient.TrustedOriginAPI = { .init(context: self.context) } ()
    public lazy var user: OktaClient.UserAPI = { .init(context: self.context) } ()
    public lazy var userFactor: OktaClient.UserFactorAPI = { .init(context: self.context) } ()
    public lazy var userType: OktaClient.UserTypeAPI = { .init(context: self.context) } ()

    /// Initializer for creating an Okta client with the given configuration.
    /// - Parameter configuration: Configuration instance describing how to connect to the desired Okta organization.
    public init(configuration: Configuration,
                session: URLSession? = nil,
                userAgent: String? = nil)
    {
        let urlSession: URLSession
        if let session = session {
            urlSession = session
        } else {
            let sessionConfiguration = URLSessionConfiguration.ephemeral
            sessionConfiguration.httpAdditionalHeaders = configuration.customHeaders
            urlSession = URLSession(configuration: sessionConfiguration,
                                    delegate: nil,
                                    delegateQueue: OperationQueue())
        }
        
        self.configuration = configuration
        // swiftlint:disable force_unwrapping
        self.context = .init(baseURL: URL(string: "\(configuration.basePath)/api/")!,
                             session: urlSession,
                             userAgent: userAgent ?? .userAgent)
        // swiftlint:enable force_unwrapping
        
        // Trigger the warning message to log to the console.
        // This trick is needed to work around the absense of dispatch_once_t.
        _ = warning
    }
    
    internal func fetchURLRequest<T>(_ link: OktaResponse<T>.Link, from response: OktaResponse<T>) throws -> URLRequest {
        guard let url = response.links[link] else {
            throw OktaClientError.invalidUrl
        }

        return URLRequest(url: url)
    }
    
    /// Asynchronously fetches the related pagination link from the given response.
    @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
    public func fetch<T: Decodable>(_ link: OktaResponse<T>.Link, from response: OktaResponse<T>) async throws -> OktaResponse<T> {
        try await send(try fetchURLRequest(link, from: response)) as OktaResponse<T>
    }

    /// Asynchronously fetches a response of the given type from the supplied URL.
    ///
    /// This may be used to process the `_links` related list from responses.
    @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
    public func fetch<T: Decodable>(_ type: T.Type, at url: URL) async throws -> OktaResponse<T> {
        try await send(URLRequest(url: url)) as OktaResponse<T>
    }
}

extension OktaClient {
    /// Describes the configuration for an Okta client.
    public struct Configuration {
        /// The API key for the Okta organization.
        public let apiKey: String
        
        /// The domain name for the desired Okta organization.
        public let domain: String
        
        /// Initializer for creating an Okta configuration
        /// - Parameters:
        ///   - apiKey: The API key for the Okta organization.
        ///   - domain: The domain name for the desired Okta organization.
        public init(apiKey: String, domain: String) {
            self.apiKey = apiKey
            self.domain = domain
        }
        
        internal var basePath: String {
            "https://\(domain)"
        }
        
        internal var customHeaders: [String: String] {
            [
                "Accept": "application/json",
                "Content-Type": "application/json",
                "Authorization": "SSWS \(apiKey)"
            ]
        }
    }
}
