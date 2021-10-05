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
