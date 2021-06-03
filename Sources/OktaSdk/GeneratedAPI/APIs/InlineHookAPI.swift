//
// InlineHookAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

open class InlineHookAPI {
    /**

     - parameter inlineHookId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func activateInlineHook(inlineHookId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: InlineHook?, _ error: Error?) -> Void)) {
        activateInlineHookWithRequestBuilder(inlineHookId: inlineHookId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /api/v1/inlineHooks/{inlineHookId}/lifecycle/activate
     - Activates the Inline Hook matching the provided id
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter inlineHookId: (path)  
     - returns: RequestBuilder<InlineHook> 
     */
    open class func activateInlineHookWithRequestBuilder(inlineHookId: String) -> RequestBuilder<InlineHook> {
        var path = "/api/v1/inlineHooks/{inlineHookId}/lifecycle/activate"
        let inlineHookIdPreEscape = "\(APIHelper.mapValueToPathItem(inlineHookId))"
        let inlineHookIdPostEscape = inlineHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{inlineHookId}", with: inlineHookIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<InlineHook>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter inlineHook: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createInlineHook(inlineHook: InlineHook, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: InlineHook?, _ error: Error?) -> Void)) {
        createInlineHookWithRequestBuilder(inlineHook: inlineHook).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
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
    open class func createInlineHookWithRequestBuilder(inlineHook: InlineHook) -> RequestBuilder<InlineHook> {
        let path = "/api/v1/inlineHooks"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inlineHook)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<InlineHook>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter inlineHookId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deactivateInlineHook(inlineHookId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: InlineHook?, _ error: Error?) -> Void)) {
        deactivateInlineHookWithRequestBuilder(inlineHookId: inlineHookId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /api/v1/inlineHooks/{inlineHookId}/lifecycle/deactivate
     - Deactivates the Inline Hook matching the provided id
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter inlineHookId: (path)  
     - returns: RequestBuilder<InlineHook> 
     */
    open class func deactivateInlineHookWithRequestBuilder(inlineHookId: String) -> RequestBuilder<InlineHook> {
        var path = "/api/v1/inlineHooks/{inlineHookId}/lifecycle/deactivate"
        let inlineHookIdPreEscape = "\(APIHelper.mapValueToPathItem(inlineHookId))"
        let inlineHookIdPostEscape = inlineHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{inlineHookId}", with: inlineHookIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<InlineHook>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter inlineHookId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteInlineHook(inlineHookId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        deleteInlineHookWithRequestBuilder(inlineHookId: inlineHookId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
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
    open class func deleteInlineHookWithRequestBuilder(inlineHookId: String) -> RequestBuilder<Void> {
        var path = "/api/v1/inlineHooks/{inlineHookId}"
        let inlineHookIdPreEscape = "\(APIHelper.mapValueToPathItem(inlineHookId))"
        let inlineHookIdPostEscape = inlineHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{inlineHookId}", with: inlineHookIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter inlineHookId: (path)  
     - parameter payloadData: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func executeInlineHook(inlineHookId: String, payloadData: AnyCodable, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: InlineHookResponse?, _ error: Error?) -> Void)) {
        executeInlineHookWithRequestBuilder(inlineHookId: inlineHookId, payloadData: payloadData).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
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
    open class func executeInlineHookWithRequestBuilder(inlineHookId: String, payloadData: AnyCodable) -> RequestBuilder<InlineHookResponse> {
        var path = "/api/v1/inlineHooks/{inlineHookId}/execute"
        let inlineHookIdPreEscape = "\(APIHelper.mapValueToPathItem(inlineHookId))"
        let inlineHookIdPostEscape = inlineHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{inlineHookId}", with: inlineHookIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: payloadData)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<InlineHookResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter inlineHookId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getInlineHook(inlineHookId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: InlineHook?, _ error: Error?) -> Void)) {
        getInlineHookWithRequestBuilder(inlineHookId: inlineHookId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
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
    open class func getInlineHookWithRequestBuilder(inlineHookId: String) -> RequestBuilder<InlineHook> {
        var path = "/api/v1/inlineHooks/{inlineHookId}"
        let inlineHookIdPreEscape = "\(APIHelper.mapValueToPathItem(inlineHookId))"
        let inlineHookIdPostEscape = inlineHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{inlineHookId}", with: inlineHookIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<InlineHook>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter type: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listInlineHooks(type: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [InlineHook]?, _ error: Error?) -> Void)) {
        listInlineHooksWithRequestBuilder(type: type).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
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
    open class func listInlineHooksWithRequestBuilder(type: String? = nil) -> RequestBuilder<[InlineHook]> {
        let path = "/api/v1/inlineHooks"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "type": type?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[InlineHook]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter inlineHookId: (path)  
     - parameter inlineHook: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateInlineHook(inlineHookId: String, inlineHook: InlineHook, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: InlineHook?, _ error: Error?) -> Void)) {
        updateInlineHookWithRequestBuilder(inlineHookId: inlineHookId, inlineHook: inlineHook).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
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
    open class func updateInlineHookWithRequestBuilder(inlineHookId: String, inlineHook: InlineHook) -> RequestBuilder<InlineHook> {
        var path = "/api/v1/inlineHooks/{inlineHookId}"
        let inlineHookIdPreEscape = "\(APIHelper.mapValueToPathItem(inlineHookId))"
        let inlineHookIdPostEscape = inlineHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{inlineHookId}", with: inlineHookIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inlineHook)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<InlineHook>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
