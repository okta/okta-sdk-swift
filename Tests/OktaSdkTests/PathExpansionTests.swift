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

import XCTest
@testable import OktaSdk

class PathExpansionTests: XCTestCase {
    let baseURL = URL(string: "https://my-domain.okta.com")!

    func resolvedPath(_ template: String, _ arguments: [String: OktaClientArgument]) -> String? {
        let url = URL(string: template.expanded(using: arguments), relativeTo: baseURL)
        return URLComponents(url: url!, resolvingAgainstBaseURL: true)?.url?.absoluteString
    }

    func testPlainValues() {
        XCTAssertEqual("/api/v1/users/{userId}/factors/{factorId}".expanded(using: [
            "userId": "00u1abcd",
            "factorId": "mfa123"
        ]), "/api/v1/users/00u1abcd/factors/mfa123")
        XCTAssertEqual("/api/v1/users/{login}".expanded(using: [
            "login": "jane.doe@example.com"
        ]), "/api/v1/users/jane.doe@example.com")
        XCTAssertEqual("/api/v1/groups/{limit}".expanded(using: ["limit": 20]),
                       "/api/v1/groups/20")
    }

    func testPathTraversalIsEncoded() {
        XCTAssertEqual("/api/v1/users/{userId}".expanded(using: ["userId": "../../sessions"]),
                       "/api/v1/users/..%2F..%2Fsessions")
        XCTAssertEqual(resolvedPath("/api/v1/users/{userId}", ["userId": "../../sessions"]),
                       "https://my-domain.okta.com/api/v1/users/..%2F..%2Fsessions")
    }

    func testDotSegmentsAreEncoded() {
        XCTAssertEqual("/api/v1/users/{userId}/factors".expanded(using: ["userId": ".."]),
                       "/api/v1/users/%2E%2E/factors")
        XCTAssertEqual("/api/v1/users/{userId}/factors".expanded(using: ["userId": "."]),
                       "/api/v1/users/%2E/factors")
        XCTAssertEqual(resolvedPath("/api/v1/users/{userId}/factors", ["userId": ".."]),
                       "https://my-domain.okta.com/api/v1/users/%2E%2E/factors")
    }

    func testQueryAndFragmentDelimitersAreEncoded() {
        XCTAssertEqual("/api/v1/users/{userId}".expanded(using: ["userId": "abc?x=1#frag"]),
                       "/api/v1/users/abc%3Fx=1%23frag")
        XCTAssertEqual("/api/v1/users/{userId}".expanded(using: ["userId": "a b%2F"]),
                       "/api/v1/users/a%20b%252F")
    }
}
