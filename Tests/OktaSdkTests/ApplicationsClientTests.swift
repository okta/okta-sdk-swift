//
//  File.swift
//  
//
//  Created by Mike Nachbaur on 2021-08-06.
//

import XCTest
@testable import OktaSdk

class ApplicationsClientTests: XCTestCase {
    var client: OktaClient!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        client = OktaClient(configuration: .init(apiKey: "TestAPIKey",
                                                 domain: "example-domain.okta.com"))
    }
    
    func testApplicationList() throws {
        var request = try client.application.listApplicationsURLRequest()
        XCTAssertEqual(request.url?.absoluteString, "https://example-domain.okta.com/api/v1/apps?")
        XCTAssertEqual(request.httpMethod, "GET")

        request = try client.application.listApplicationsURLRequest(q: "q", after: "foo", limit: 2, filter: "bar", expand: "yes", includeNonDeleted: true)
        XCTAssertEqual(request.url?.absoluteString, "https://example-domain.okta.com/api/v1/apps?after=foo&expand=yes&filter=bar&includeNonDeleted=true&limit=2&q=q")
        XCTAssertEqual(request.httpMethod, "GET")
    }
}
