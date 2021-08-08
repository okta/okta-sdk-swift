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
        
        client = OktaClient(configuration: .init(apiKey: "009jqHMFIpoMJOkvS1KYVWUr1Q4XGw7EwKJtYVSPiI",
                                                 domain: "ios-idx-sdk.okta.com"),
                            queue: .global())
    }
    
    func testApplicationList() throws {
        let listExpectation = expectation(description: "List Applications")
        client.application.listApplications { result in
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
    /*
    let sendable = ClientSendableMock()
    let configuration = OktaClient.Configuration(apiKey: "apiKey", domain: "example.com")
    let queue = DispatchQueue.global()
    
    var client: OktaSdk.API.ApplicationAPI!
    
    enum TestError: Error {
        case missingRequest
    }
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        client = .init(configuration: configuration,
                       queue: queue)
    }
    
    @inlinable
    func httpRequest<T>(_ label: String = "Waiting", block: @escaping (@escaping(Result<T, OktaSdk.OktaError>) -> Void) -> Void) throws -> OktaSdk.HttpRequest<T> {
        var request: Result<T, OktaSdk.OktaError>?
        let expect = expectation(description: label)
        DispatchQueue.global().async {
            block { (result) in
                request = result
                expect.fulfill()
            }
        }
        wait(for: [ expect ], timeout: 1)
        
        XCTAssertNotNil(request)
        let recordedCall = try XCTUnwrap(sendable.recordedCalls.last)
        XCTAssertEqual(recordedCall.function, "send(_:completion:)")
        return try XCTUnwrap(recordedCall.arguments?["request"] as? OktaSdk.HttpRequest<T>)
    }

    func testListApplications() throws {
        let request: OktaSdk.HttpRequest<[OktaSdk.Application]> = try httpRequest { (completion) in
            self.client.listApplications(completion: completion)
        }
        
        XCTAssertEqual(request.uri, "/api/v1/apps")
        XCTAssertEqual(request.verb, .get)
        
        let urlRequest = try request.urlRequest(for: configuration)
        XCTAssertEqual(urlRequest.url?.absoluteString, "https://example.com/api/v1/apps?includeNonDeleted=false&limit=-1")
    }
    
    func testCreateApplication() throws {
    }
    */
}
