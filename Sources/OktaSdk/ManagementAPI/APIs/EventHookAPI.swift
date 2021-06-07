//
// EventHookAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class EventHookAPI {
    /**

     - parameter eventHookId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func activateEventHook(eventHookId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EventHook?, _ error: Error?) -> Void)) {
        activateEventHookWithRequestBuilder(eventHookId: eventHookId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /api/v1/eventHooks/{eventHookId}/lifecycle/activate
     - Success
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter eventHookId: (path)  
     - returns: RequestBuilder<EventHook> 
     */
    open class func activateEventHookWithRequestBuilder(eventHookId: String) -> RequestBuilder<EventHook> {
        var path = "/api/v1/eventHooks/{eventHookId}/lifecycle/activate"
        let eventHookIdPreEscape = "\(APIHelper.mapValueToPathItem(eventHookId))"
        let eventHookIdPostEscape = eventHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{eventHookId}", with: eventHookIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EventHook>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter eventHook: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createEventHook(eventHook: EventHook, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EventHook?, _ error: Error?) -> Void)) {
        createEventHookWithRequestBuilder(eventHook: eventHook).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /api/v1/eventHooks
     - Success
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter eventHook: (body)  
     - returns: RequestBuilder<EventHook> 
     */
    open class func createEventHookWithRequestBuilder(eventHook: EventHook) -> RequestBuilder<EventHook> {
        let path = "/api/v1/eventHooks"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: eventHook)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EventHook>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter eventHookId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deactivateEventHook(eventHookId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EventHook?, _ error: Error?) -> Void)) {
        deactivateEventHookWithRequestBuilder(eventHookId: eventHookId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /api/v1/eventHooks/{eventHookId}/lifecycle/deactivate
     - Success
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter eventHookId: (path)  
     - returns: RequestBuilder<EventHook> 
     */
    open class func deactivateEventHookWithRequestBuilder(eventHookId: String) -> RequestBuilder<EventHook> {
        var path = "/api/v1/eventHooks/{eventHookId}/lifecycle/deactivate"
        let eventHookIdPreEscape = "\(APIHelper.mapValueToPathItem(eventHookId))"
        let eventHookIdPostEscape = eventHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{eventHookId}", with: eventHookIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EventHook>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter eventHookId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteEventHook(eventHookId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        deleteEventHookWithRequestBuilder(eventHookId: eventHookId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /api/v1/eventHooks/{eventHookId}
     - Success
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter eventHookId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteEventHookWithRequestBuilder(eventHookId: String) -> RequestBuilder<Void> {
        var path = "/api/v1/eventHooks/{eventHookId}"
        let eventHookIdPreEscape = "\(APIHelper.mapValueToPathItem(eventHookId))"
        let eventHookIdPostEscape = eventHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{eventHookId}", with: eventHookIdPostEscape, options: .literal, range: nil)
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

     - parameter eventHookId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getEventHook(eventHookId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EventHook?, _ error: Error?) -> Void)) {
        getEventHookWithRequestBuilder(eventHookId: eventHookId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /api/v1/eventHooks/{eventHookId}
     - Success
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter eventHookId: (path)  
     - returns: RequestBuilder<EventHook> 
     */
    open class func getEventHookWithRequestBuilder(eventHookId: String) -> RequestBuilder<EventHook> {
        var path = "/api/v1/eventHooks/{eventHookId}"
        let eventHookIdPreEscape = "\(APIHelper.mapValueToPathItem(eventHookId))"
        let eventHookIdPostEscape = eventHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{eventHookId}", with: eventHookIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EventHook>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listEventHooks(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [EventHook]?, _ error: Error?) -> Void)) {
        listEventHooksWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /api/v1/eventHooks
     - Success
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - returns: RequestBuilder<[EventHook]> 
     */
    open class func listEventHooksWithRequestBuilder() -> RequestBuilder<[EventHook]> {
        let path = "/api/v1/eventHooks"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[EventHook]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter eventHookId: (path)  
     - parameter eventHook: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateEventHook(eventHookId: String, eventHook: EventHook, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EventHook?, _ error: Error?) -> Void)) {
        updateEventHookWithRequestBuilder(eventHookId: eventHookId, eventHook: eventHook).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PUT /api/v1/eventHooks/{eventHookId}
     - Success
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter eventHookId: (path)  
     - parameter eventHook: (body)  
     - returns: RequestBuilder<EventHook> 
     */
    open class func updateEventHookWithRequestBuilder(eventHookId: String, eventHook: EventHook) -> RequestBuilder<EventHook> {
        var path = "/api/v1/eventHooks/{eventHookId}"
        let eventHookIdPreEscape = "\(APIHelper.mapValueToPathItem(eventHookId))"
        let eventHookIdPostEscape = eventHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{eventHookId}", with: eventHookIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: eventHook)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EventHook>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter eventHookId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func verifyEventHook(eventHookId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EventHook?, _ error: Error?) -> Void)) {
        verifyEventHookWithRequestBuilder(eventHookId: eventHookId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /api/v1/eventHooks/{eventHookId}/lifecycle/verify
     - Success
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter eventHookId: (path)  
     - returns: RequestBuilder<EventHook> 
     */
    open class func verifyEventHookWithRequestBuilder(eventHookId: String) -> RequestBuilder<EventHook> {
        var path = "/api/v1/eventHooks/{eventHookId}/lifecycle/verify"
        let eventHookIdPreEscape = "\(APIHelper.mapValueToPathItem(eventHookId))"
        let eventHookIdPostEscape = eventHookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{eventHookId}", with: eventHookIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EventHook>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
