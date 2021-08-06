//
//  File.swift
//  
//
//  Created by Mike Nachbaur on 2021-06-03.
//

import Foundation

public struct OktaClient {
    public let configuration: Configuration
    public let queue: DispatchQueue
    private var urlSessionStore = SynchronizedDictionary<String, URLSession>()

    public lazy var application: OktaSdk.API.ApplicationAPI = { .init(configuration: configuration, queue: queue) }()
    
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
