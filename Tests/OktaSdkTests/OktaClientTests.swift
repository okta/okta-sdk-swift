//
//  File.swift
//  
//
//  Created by Mike Nachbaur on 2021-08-06.
//

import XCTest
@testable import OktaSdk

class OktaClientTests: XCTestCase {
    func testConfiguration() throws {
        let config = OktaClient.Configuration(apiKey: "test_api_key", domain: "my-domain.okta.com")
        XCTAssertEqual(config.apiKey, "test_api_key")
        XCTAssertEqual(config.domain, "my-domain.okta.com")
        XCTAssertEqual(config.basePath, "https://my-domain.okta.com")
        XCTAssertEqual(config.customHeaders, [
            "Accept": "application/json",
            "Content-Type": "application/json",
            "Authorization": "SSWS test_api_key"
        ])
    }
}
