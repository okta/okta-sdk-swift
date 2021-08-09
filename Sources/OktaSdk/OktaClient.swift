//
//  File.swift
//  
//
//  Created by Mike Nachbaur on 2021-06-03.
//

import Foundation

public class OktaClient {
    public let configuration: Configuration
    public let queue: DispatchQueue
    private var urlSessionStore = SynchronizedDictionary<String, URLSession>()

    public lazy var application: OktaSdk.API.ApplicationAPI = { .init(api: self) }()
    public lazy var authorizationServer: OktaSdk.API.AuthorizationServerAPI = { .init(api: self) }()
    public lazy var captcha: OktaSdk.API.CAPTCHAAPI = { .init(api: self) }()
    public lazy var domain: OktaSdk.API.DomainAPI = { .init(api: self) }()
    public lazy var eventHook: OktaSdk.API.EventHookAPI = { .init(api: self) }()
    public lazy var feature: OktaSdk.API.FeatureAPI = { .init(api: self) }()
    public lazy var group: OktaSdk.API.GroupAPI = { .init(api: self) }()
    public lazy var identityProvider: OktaSdk.API.IdentityProviderAPI = { .init(api: self) }()
    public lazy var inlineHook: OktaSdk.API.InlineHookAPI = { .init(api: self) }()
    public lazy var linkedObject: OktaSdk.API.LinkedObjectAPI = { .init(api: self) }()
    public lazy var log: OktaSdk.API.LogAPI = { .init(api: self) }()
    public lazy var networkZone: OktaSdk.API.NetworkZoneAPI = { .init(api: self) }()
    public lazy var policy: OktaSdk.API.PolicyAPI = { .init(api: self) }()
    public lazy var profileMapping: OktaSdk.API.ProfileMappingAPI = { .init(api: self) }()
    public lazy var session: OktaSdk.API.SessionAPI = { .init(api: self) }()
    public lazy var template: OktaSdk.API.TemplateAPI = { .init(api: self) }()
    public lazy var threadInsight: OktaSdk.API.ThreatInsightAPI = { .init(api: self) }()
    public lazy var trustedOrigin: OktaSdk.API.TrustedOriginAPI = { .init(api: self) }()
    public lazy var user: OktaSdk.API.UserAPI = { .init(api: self) }()
    public lazy var userFactor: OktaSdk.API.UserFactorAPI = { .init(api: self) }()
    public lazy var userSchema: OktaSdk.API.UserSchemaAPI = { .init(api: self) }()
    public lazy var userType: OktaSdk.API.UserTypeAPI = { .init(api: self) }()
    
    public init(configuration: OktaClient.Configuration, queue: DispatchQueue = .main) {
        self.configuration = configuration
        self.queue = queue
    }
}

public struct OktaSdk {
    public struct API {}
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

extension OktaClient: OktaSdkAPI {
    var basePath: String {
        configuration.basePath
    }
    
    var credential: URLCredential? {
        nil
    }
    
    var customHeaders: [String : String] {
        configuration.customHeaders
    }
    
    var requestBuilderFactory: RequestBuilderFactory {
        self
    }
    
    var apiResponseQueue: DispatchQueue {
        queue
    }
    
}

extension OktaClient: RequestBuilderFactory {
    func getNonDecodableBuilder<T>() -> RequestBuilder<T>.Type {
        return URLSessionRequestBuilder<T>.self
    }

    func getBuilder<T: Decodable>() -> RequestBuilder<T>.Type {
        return URLSessionDecodableRequestBuilder<T>.self
    }
}
