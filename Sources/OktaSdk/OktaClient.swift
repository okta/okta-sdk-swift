//
//  File.swift
//  
//
//  Created by Mike Nachbaur on 2021-06-03.
//

import Foundation

#if canImport(Combine)
import Combine
#endif

enum OktaClientError: Error {
    case invalidUrl
    case invalidResponse
    case invalidBody
    case statusCode(_ statusCode: Int)
    case unknown
}

open class OktaClient {
    public let configuration: Configuration

    internal let queue = OperationQueue()
    internal let urlSession: URLSession
    internal let baseURL: URL

    public lazy var application: OktaClient.ApplicationAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var authenticator: OktaClient.AuthenticatorAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var authorizationServer: OktaClient.AuthorizationServerAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var captcha: OktaClient.CAPTCHAAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var domain: OktaClient.DomainAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var eventHook: OktaClient.EventHookAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var feature: OktaClient.FeatureAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var group: OktaClient.GroupAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var identityProvider: OktaClient.IdentityProviderAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var inlineHook: OktaClient.InlineHookAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var linkedObject: OktaClient.LinkedObjectAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var log: OktaClient.LogAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var networkZone: OktaClient.NetworkZoneAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var policy: OktaClient.PolicyAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var profileMapping: OktaClient.ProfileMappingAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var session: OktaClient.SessionAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var template: OktaClient.TemplateAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var threadInsight: OktaClient.ThreatInsightAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var trustedOrigin: OktaClient.TrustedOriginAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var user: OktaClient.UserAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var userFactor: OktaClient.UserFactorAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var userSchema: OktaClient.UserSchemaAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    public lazy var userType: OktaClient.UserTypeAPI = { .init(baseURL: self.baseURL, session: self.urlSession) }()
    
    public init(configuration: Configuration) {
        self.configuration = configuration
        self.baseURL = URL(string: "\(configuration.basePath)/api/")!
        
        let sessionConfiguration = URLSessionConfiguration.ephemeral
        sessionConfiguration.httpAdditionalHeaders = configuration.customHeaders
        urlSession = URLSession(configuration: sessionConfiguration, delegate: nil, delegateQueue: queue)
    }
}

extension OktaClient {
    public struct Configuration {
        public let apiKey: String
        public let domain: String
        
        public init(apiKey: String, domain: String) {
            self.apiKey = apiKey
            self.domain = domain
        }
        
        internal var basePath: String {
            "https://\(domain)"
        }
        
        internal var customHeaders: [String:String] {
            [
                "Accept": "application/json",
                "Content-Type": "application/json",
                "Authorization": "SSWS \(apiKey)"
            ]
        }
    }
}
