//
//  File.swift
//  
//
//  Created by Mike Nachbaur on 2021-08-09.
//

import XCTest
@testable import OktaSdk

class UserClientTests: XCTestCase {
    var client: OktaClient!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        client = OktaClient(configuration: .init(apiKey: "009jqHMFIpoMJOkvS1KYVWUr1Q4XGw7EwKJtYVSPiI",
                                                 domain: "ios-idx-sdk.okta.com"),
                            queue: .global())
    }
    
    func testUserList() throws {
        let listExpectation = expectation(description: "List Users")
        client.user.listUsers { result in
            switch result {
            case .success(let response):
                print(response)
            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
            listExpectation.fulfill()
        }
        waitForExpectations(timeout: 60.0) { error in
            XCTAssertNil(error)
        }
    }
}
