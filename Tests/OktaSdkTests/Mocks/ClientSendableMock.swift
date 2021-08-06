//
//  File.swift
//  
//
//  Created by Mike Nachbaur on 2021-08-06.
//

import Foundation

/*
 @testable import OktaSdk

class MockBase {
    struct RecordedCall {
        let function: String
        let arguments: [String:Any]?
    }

    var recordedCalls: [RecordedCall] = []
    func reset() {
        recordedCalls.removeAll()
    }
    
    private(set) var expectations: [String:[String:Any]] = [:]
    func expect(function name: String, arguments: [String:Any]) {
        expectations[name] = arguments
    }
    
    func response(for name: String) -> [String:Any]? {
        return expectations.removeValue(forKey: name)
    }
}

class ClientSendableMock: MockBase, OktaSdkSendable {
    func send<T>(_ request: OktaSdk.HttpRequest<T>, completion: @escaping (Result<T, OktaSdk.OktaError>) -> Void) {
        recordedCalls.append(RecordedCall(function: #function,
                                          arguments: ["request": request]))
        if let result = response(for: #function),
           let response = result["response"] as? T
        {
            completion(.success(response))
        } else {
            completion(.failure(.invalidClient))
        }
    }
}
*/
