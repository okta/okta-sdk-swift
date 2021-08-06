//
// InlineHookAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif
import AnyCodable

extension OktaSdk.API {


public struct InlineHookAPI {
    internal let configuration: OktaClient.Configuration
    internal let queue: DispatchQueue

    internal init(configuration: OktaClient.Configuration, queue: DispatchQueue) {
        self.configuration = configuration
        self.queue = queue
    }

    /**

     - parameter inlineHookId: (path)  
     - returns: AnyPublisher<InlineHook, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func activateInlineHook(inlineHookId: String) -> AnyPublisher<InlineHook, Error> {
        return Future<InlineHook, Error>.init { promise in
            activateInlineHookWithRequestBuilder(inlineHookId: inlineHookId).execute(queue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif
    /**

     - parameter inlineHookId: (path)  
     - parameter completion: completion handler to receive the result
     */
    func activateInlineHook(inlineHookId: String, completion: @escaping ((_ result: Swift.Result<InlineHook, Error>) -> Void)) {
        activateInlineHookWithRequestBuilder(inlineHookId: inlineHookId).execute(queue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     - POST /api/v1/inlineHooks/{inlineHookId}/lifecycle/activate
     - Activates the Inline Hook matching the provided id
     - parameter inlineHookId: (path)  
     - returns: RequestBuilder<InlineHook> 
     */
    public func activateInlineHookWithRequestBuilder(inlineHookId: String) -> RequestBuilder<InlineHook> {
        var path = "/api/v1/inlineHooks/{inlineHookId}/lifecycle/activate"
        let inlineHookIdPreEscape = "\(APIHelper.mapValueToPathItem(inlineHookId))"
        let inlineHookIdPostEscape = inlineHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{inlineHookId}", with: inlineHookIdPostEscape, options: .literal, range: nil)
        let URLString = configuration.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(configuration.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<InlineHook>.Type = OktaSdkAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter inlineHook: (body)  
     - returns: AnyPublisher<InlineHook, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func createInlineHook(inlineHook: InlineHook) -> AnyPublisher<InlineHook, Error> {
        return Future<InlineHook, Error>.init { promise in
            createInlineHookWithRequestBuilder(inlineHook: inlineHook).execute(queue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif
    /**

     - parameter inlineHook: (body)  
     - parameter completion: completion handler to receive the result
     */
    func createInlineHook(inlineHook: InlineHook, completion: @escaping ((_ result: Swift.Result<InlineHook, Error>) -> Void)) {
        createInlineHookWithRequestBuilder(inlineHook: inlineHook).execute(queue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     - POST /api/v1/inlineHooks
     - Success
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter inlineHook: (body)  
     - returns: RequestBuilder<InlineHook> 
     */
    public func createInlineHookWithRequestBuilder(inlineHook: InlineHook) -> RequestBuilder<InlineHook> {
        let path = "/api/v1/inlineHooks"
        let URLString = configuration.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inlineHook)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(configuration.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<InlineHook>.Type = OktaSdkAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter inlineHookId: (path)  
     - returns: AnyPublisher<InlineHook, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func deactivateInlineHook(inlineHookId: String) -> AnyPublisher<InlineHook, Error> {
        return Future<InlineHook, Error>.init { promise in
            deactivateInlineHookWithRequestBuilder(inlineHookId: inlineHookId).execute(queue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif
    /**

     - parameter inlineHookId: (path)  
     - parameter completion: completion handler to receive the result
     */
    func deactivateInlineHook(inlineHookId: String, completion: @escaping ((_ result: Swift.Result<InlineHook, Error>) -> Void)) {
        deactivateInlineHookWithRequestBuilder(inlineHookId: inlineHookId).execute(queue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     - POST /api/v1/inlineHooks/{inlineHookId}/lifecycle/deactivate
     - Deactivates the Inline Hook matching the provided id
     - parameter inlineHookId: (path)  
     - returns: RequestBuilder<InlineHook> 
     */
    public func deactivateInlineHookWithRequestBuilder(inlineHookId: String) -> RequestBuilder<InlineHook> {
        var path = "/api/v1/inlineHooks/{inlineHookId}/lifecycle/deactivate"
        let inlineHookIdPreEscape = "\(APIHelper.mapValueToPathItem(inlineHookId))"
        let inlineHookIdPostEscape = inlineHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{inlineHookId}", with: inlineHookIdPostEscape, options: .literal, range: nil)
        let URLString = configuration.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(configuration.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<InlineHook>.Type = OktaSdkAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter inlineHookId: (path)  
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func deleteInlineHook(inlineHookId: String) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            deleteInlineHookWithRequestBuilder(inlineHookId: inlineHookId).execute(queue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif
    /**

     - parameter inlineHookId: (path)  
     - parameter completion: completion handler to receive the result
     */
    func deleteInlineHook(inlineHookId: String, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        deleteInlineHookWithRequestBuilder(inlineHookId: inlineHookId).execute(queue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     - DELETE /api/v1/inlineHooks/{inlineHookId}
     - Deletes the Inline Hook matching the provided id. Once deleted, the Inline Hook is unrecoverable. As a safety precaution, only Inline Hooks with a status of INACTIVE are eligible for deletion.
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter inlineHookId: (path)  
     - returns: RequestBuilder<Void> 
     */
    public func deleteInlineHookWithRequestBuilder(inlineHookId: String) -> RequestBuilder<Void> {
        var path = "/api/v1/inlineHooks/{inlineHookId}"
        let inlineHookIdPreEscape = "\(APIHelper.mapValueToPathItem(inlineHookId))"
        let inlineHookIdPostEscape = inlineHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{inlineHookId}", with: inlineHookIdPostEscape, options: .literal, range: nil)
        let URLString = configuration.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(configuration.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<Void>.Type = OktaSdkAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter inlineHookId: (path)  
     - parameter payloadData: (body)  
     - returns: AnyPublisher<InlineHookResponse, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func executeInlineHook(inlineHookId: String, payloadData: AnyCodable) -> AnyPublisher<InlineHookResponse, Error> {
        return Future<InlineHookResponse, Error>.init { promise in
            executeInlineHookWithRequestBuilder(inlineHookId: inlineHookId, payloadData: payloadData).execute(queue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif
    /**

     - parameter inlineHookId: (path)  
     - parameter payloadData: (body)  
     - parameter completion: completion handler to receive the result
     */
    func executeInlineHook(inlineHookId: String, payloadData: AnyCodable, completion: @escaping ((_ result: Swift.Result<InlineHookResponse, Error>) -> Void)) {
        executeInlineHookWithRequestBuilder(inlineHookId: inlineHookId, payloadData: payloadData).execute(queue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     - POST /api/v1/inlineHooks/{inlineHookId}/execute
     - Executes the Inline Hook matching the provided inlineHookId using the request body as the input. This will send the provided data through the Channel and return a response if it matches the correct data contract. This execution endpoint should only be used for testing purposes.
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter inlineHookId: (path)  
     - parameter payloadData: (body)  
     - returns: RequestBuilder<InlineHookResponse> 
     */
    public func executeInlineHookWithRequestBuilder(inlineHookId: String, payloadData: AnyCodable) -> RequestBuilder<InlineHookResponse> {
        var path = "/api/v1/inlineHooks/{inlineHookId}/execute"
        let inlineHookIdPreEscape = "\(APIHelper.mapValueToPathItem(inlineHookId))"
        let inlineHookIdPostEscape = inlineHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{inlineHookId}", with: inlineHookIdPostEscape, options: .literal, range: nil)
        let URLString = configuration.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: payloadData)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(configuration.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<InlineHookResponse>.Type = OktaSdkAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter inlineHookId: (path)  
     - returns: AnyPublisher<InlineHook, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func getInlineHook(inlineHookId: String) -> AnyPublisher<InlineHook, Error> {
        return Future<InlineHook, Error>.init { promise in
            getInlineHookWithRequestBuilder(inlineHookId: inlineHookId).execute(queue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif
    /**

     - parameter inlineHookId: (path)  
     - parameter completion: completion handler to receive the result
     */
    func getInlineHook(inlineHookId: String, completion: @escaping ((_ result: Swift.Result<InlineHook, Error>) -> Void)) {
        getInlineHookWithRequestBuilder(inlineHookId: inlineHookId).execute(queue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     - GET /api/v1/inlineHooks/{inlineHookId}
     - Gets an inline hook by ID
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter inlineHookId: (path)  
     - returns: RequestBuilder<InlineHook> 
     */
    public func getInlineHookWithRequestBuilder(inlineHookId: String) -> RequestBuilder<InlineHook> {
        var path = "/api/v1/inlineHooks/{inlineHookId}"
        let inlineHookIdPreEscape = "\(APIHelper.mapValueToPathItem(inlineHookId))"
        let inlineHookIdPostEscape = inlineHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{inlineHookId}", with: inlineHookIdPostEscape, options: .literal, range: nil)
        let URLString = configuration.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(configuration.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<InlineHook>.Type = OktaSdkAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter type: (query)  (optional)
     - returns: AnyPublisher<[InlineHook], Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func listInlineHooks(type: String? = nil) -> AnyPublisher<[InlineHook], Error> {
        return Future<[InlineHook], Error>.init { promise in
            listInlineHooksWithRequestBuilder(type: type).execute(queue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif
    /**

     - parameter type: (query)  (optional)
     - parameter completion: completion handler to receive the result
     */
    func listInlineHooks(type: String? = nil, completion: @escaping ((_ result: Swift.Result<[InlineHook], Error>) -> Void)) {
        listInlineHooksWithRequestBuilder(type: type).execute(queue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     - GET /api/v1/inlineHooks
     - Success
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter type: (query)  (optional)
     - returns: RequestBuilder<[InlineHook]> 
     */
    public func listInlineHooksWithRequestBuilder(type: String? = nil) -> RequestBuilder<[InlineHook]> {
        let path = "/api/v1/inlineHooks"
        let URLString = configuration.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "type": type?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(configuration.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<[InlineHook]>.Type = OktaSdkAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter inlineHookId: (path)  
     - parameter inlineHook: (body)  
     - returns: AnyPublisher<InlineHook, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func updateInlineHook(inlineHookId: String, inlineHook: InlineHook) -> AnyPublisher<InlineHook, Error> {
        return Future<InlineHook, Error>.init { promise in
            updateInlineHookWithRequestBuilder(inlineHookId: inlineHookId, inlineHook: inlineHook).execute(queue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif
    /**

     - parameter inlineHookId: (path)  
     - parameter inlineHook: (body)  
     - parameter completion: completion handler to receive the result
     */
    func updateInlineHook(inlineHookId: String, inlineHook: InlineHook, completion: @escaping ((_ result: Swift.Result<InlineHook, Error>) -> Void)) {
        updateInlineHookWithRequestBuilder(inlineHookId: inlineHookId, inlineHook: inlineHook).execute(queue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     - PUT /api/v1/inlineHooks/{inlineHookId}
     - Updates an inline hook by ID
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter inlineHookId: (path)  
     - parameter inlineHook: (body)  
     - returns: RequestBuilder<InlineHook> 
     */
    public func updateInlineHookWithRequestBuilder(inlineHookId: String, inlineHook: InlineHook) -> RequestBuilder<InlineHook> {
        var path = "/api/v1/inlineHooks/{inlineHookId}"
        let inlineHookIdPreEscape = "\(APIHelper.mapValueToPathItem(inlineHookId))"
        let inlineHookIdPostEscape = inlineHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{inlineHookId}", with: inlineHookIdPostEscape, options: .literal, range: nil)
        let URLString = configuration.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inlineHook)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(configuration.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<InlineHook>.Type = OktaSdkAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
}
