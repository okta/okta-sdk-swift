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
        
        client = OktaClient(configuration: .init(apiKey: "TestAPIKey",
                                                 domain: "example-domain.okta.com"))
    }
    
    func testUserList() throws {
        let request = try client.user.listUsersURLRequest()
        XCTAssertEqual(request.url?.absoluteString, "https://example-domain.okta.com/api/v1/users?")
        XCTAssertEqual(request.httpMethod, "GET")
    }
    
    func testCreateUser() throws {
        let request = try client.user.createUserURLRequest(
            createUserRequest: CreateUserRequest(
                credentials: .init(password: .init(hash: nil,
                                                   hook: nil,
                                                   value: "TestPassword"),
                                   recoveryQuestion: .init(answer: "Okta",
                                                           question: "What's your favorite CIAM provider?")),
                profile: .init(displayName: "Arthur Dent",
                               email: "arthur@example.com",
                               firstName: "Arthur",
                               lastName: "Dent",
                               login: "arthur@example.com")),
            activate: true,
            nextLogin: .changepassword)
        XCTAssertEqual(request.url?.absoluteString, "https://example-domain.okta.com/api/v1/users?activate=true&nextLogin=changePassword")
        XCTAssertEqual(request.httpMethod, "POST")
        
        let body = String(data: request.httpBody!, encoding: .utf8)
        XCTAssertEqual(body, """
        {
          "credentials" : {
            "password" : {
              "value" : "TestPassword"
            },
            "recovery_question" : {
              "answer" : "Okta",
              "question" : "What's your favorite CIAM provider?"
            }
          },
          "profile" : {
            "displayName" : "Arthur Dent",
            "email" : "arthur@example.com",
            "firstName" : "Arthur",
            "lastName" : "Dent",
            "login" : "arthur@example.com"
          }
        }
        """)
    }
}
