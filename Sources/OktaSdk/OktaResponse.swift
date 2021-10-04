//
//  Response.swift
//  OktaSdk
//
//  Created by Mike Nachbaur on 2021-09-17.
//

import Foundation

public struct OktaResponse<T: Decodable>: Decodable {
    public enum Link: String, Codable {
        case current = "self", next, previous
    }
    
    public let result: T
    public let links: [Link:URL]
    public let rateInfo: RateLimit?
    public let requestId: String?

    public struct RateLimit: Decodable {
        public let limit: Int
        public let remaining: Int
        public let reset: Int
        
        init?(with httpHeaders: [AnyHashable:Any]) {
            guard let rateLimitString = httpHeaders["x-rate-limit-limit"] as? String,
                  let rateLimit = Int(rateLimitString),
                  let remainingString = httpHeaders["x-rate-limit-remaining"] as? String,
                  let remaining = Int(remainingString),
                  let resetString = httpHeaders["x-rate-limit-reset"] as? String,
                  let reset = Int(resetString)
            else {
                return nil
            }
            self.limit = rateLimit
            self.remaining = remaining
            self.reset = reset
        }
    }
}

public struct Empty: Decodable {}
