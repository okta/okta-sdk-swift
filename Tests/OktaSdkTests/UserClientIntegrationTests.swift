//
//  File.swift
//  
//
//  Created by Mike Nachbaur on 2021-08-09.
//

import XCTest
@testable import OktaSdk

class UserClientIntegrationTests: XCTestCase {
    var client: OktaClient!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        let apiKey = "<#api_key#>"
        let domain = "<#okta_domain#>"
        
        try XCTSkipIf(apiKey.hasPrefix("<#") || domain.hasPrefix("<#"))
        client = OktaClient(configuration: .init(apiKey: apiKey, domain: domain))
    }
    
    func testCreateUser() async throws {
        let response = try await client.user.createUser(body: .init(credentials: .init(password: .init(value: "TestPassword"),
                                                                                       recoveryQuestion: .init(answer: "Okta", question: "What's your favorite identity provider?")),
                                                                    profile: .init(displayName: "Arthur Dent",
                                                                                   email: "arthur@example.com",
                                                                                   firstName: "Arthur",
                                                                                   lastName: "Dent",
                                                                                   login: "arthur@example.com")),
                                                        activate: true,
                                                        nextLogin: .changepassword)
        XCTAssertNotNil(response.result.credentials)
        XCTAssertEqual(response.result.credentials?.provider?.name, "OKTA")
        XCTAssertEqual(response.result.profile?.firstName, "Arthur")
        XCTAssertEqual(response.result.profile?.lastName, "Dent")
        XCTAssertEqual(response.result.status, .passwordExpired)
        
        let userId = try XCTUnwrap(response.result.id)
        
        try await client.user.deactivateOrDeleteUser(userId: userId)
        try await client.user.deactivateOrDeleteUser(userId: userId)
        
        let searchResponse = try await client.user.listUsers(q: "arthur@example.com")
        XCTAssertTrue(searchResponse.result.isEmpty)
    }
}
