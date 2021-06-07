//
//  File.swift
//  
//
//  Created by Mike Nachbaur on 2021-06-03.
//

import Foundation

public struct OktaConfiguration {
    public let apiKey: String
    public let domain: String
    
    public init(apiKey: String, domain: String) {
        self.apiKey = apiKey
        self.domain = domain
    }
}

public struct OktaClient {
    public static var configuration: OktaConfiguration? {
        didSet {
            guard let configuration = configuration else { return }
            OpenAPIClientAPI.basePath = "https://\(configuration.domain)"
            OpenAPIClientAPI.customHeaders = [
                "Accept": "application/json",
                "Content-Type": "application/json",
                "Authorization": "SSWS \(configuration.apiKey)"
            ]
        }
    }
    
    public static var queue: DispatchQueue {
        get {
            OpenAPIClientAPI.apiResponseQueue
        }
        set {
            OpenAPIClientAPI.apiResponseQueue = newValue
        }
    }
}
