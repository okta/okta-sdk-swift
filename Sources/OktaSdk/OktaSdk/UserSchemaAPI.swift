//
// UserSchemaAPI.swift
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


public struct UserSchemaAPI {
    internal let configuration: OktaClient.Configuration
    internal let queue: DispatchQueue

    internal init(configuration: OktaClient.Configuration, queue: DispatchQueue) {
        self.configuration = configuration
        self.queue = queue
    }

    /**
     Fetches the Schema for an App User
     
     - parameter appInstanceId: (path)  
     - returns: AnyPublisher<UserSchema, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func getApplicationUserSchema(appInstanceId: String) -> AnyPublisher<UserSchema, Error> {
        return Future<UserSchema, Error>.init { promise in
            getApplicationUserSchemaWithRequestBuilder(appInstanceId: appInstanceId).execute(queue) { result -> Void in
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
     Fetches the Schema for an App User
     
     - parameter appInstanceId: (path)  
     - parameter completion: completion handler to receive the result
     */
    func getApplicationUserSchema(appInstanceId: String, completion: @escaping ((_ result: Swift.Result<UserSchema, Error>) -> Void)) {
        getApplicationUserSchemaWithRequestBuilder(appInstanceId: appInstanceId).execute(queue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Fetches the Schema for an App User
     - GET /api/v1/meta/schemas/apps/{appInstanceId}/default
     - Fetches the Schema for an App User
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter appInstanceId: (path)  
     - returns: RequestBuilder<UserSchema> 
     */
    public func getApplicationUserSchemaWithRequestBuilder(appInstanceId: String) -> RequestBuilder<UserSchema> {
        var path = "/api/v1/meta/schemas/apps/{appInstanceId}/default"
        let appInstanceIdPreEscape = "\(APIHelper.mapValueToPathItem(appInstanceId))"
        let appInstanceIdPostEscape = appInstanceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{appInstanceId}", with: appInstanceIdPostEscape, options: .literal, range: nil)
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

        let requestBuilder: RequestBuilder<UserSchema>.Type = OktaSdkAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Fetches the schema for a Schema Id.
     
     - parameter schemaId: (path)  
     - returns: AnyPublisher<UserSchema, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func getUserSchema(schemaId: String) -> AnyPublisher<UserSchema, Error> {
        return Future<UserSchema, Error>.init { promise in
            getUserSchemaWithRequestBuilder(schemaId: schemaId).execute(queue) { result -> Void in
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
     Fetches the schema for a Schema Id.
     
     - parameter schemaId: (path)  
     - parameter completion: completion handler to receive the result
     */
    func getUserSchema(schemaId: String, completion: @escaping ((_ result: Swift.Result<UserSchema, Error>) -> Void)) {
        getUserSchemaWithRequestBuilder(schemaId: schemaId).execute(queue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Fetches the schema for a Schema Id.
     - GET /api/v1/meta/schemas/user/{schemaId}
     - Fetches the schema for a Schema Id.
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter schemaId: (path)  
     - returns: RequestBuilder<UserSchema> 
     */
    public func getUserSchemaWithRequestBuilder(schemaId: String) -> RequestBuilder<UserSchema> {
        var path = "/api/v1/meta/schemas/user/{schemaId}"
        let schemaIdPreEscape = "\(APIHelper.mapValueToPathItem(schemaId))"
        let schemaIdPostEscape = schemaIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{schemaId}", with: schemaIdPostEscape, options: .literal, range: nil)
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

        let requestBuilder: RequestBuilder<UserSchema>.Type = OktaSdkAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Partial updates on the User Profile properties of the Application User Schema.
     
     - parameter appInstanceId: (path)  
     - parameter body: (body)  (optional)
     - returns: AnyPublisher<UserSchema, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func updateApplicationUserProfile(appInstanceId: String, body: UserSchema? = nil) -> AnyPublisher<UserSchema, Error> {
        return Future<UserSchema, Error>.init { promise in
            updateApplicationUserProfileWithRequestBuilder(appInstanceId: appInstanceId, body: body).execute(queue) { result -> Void in
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
     Partial updates on the User Profile properties of the Application User Schema.
     
     - parameter appInstanceId: (path)  
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the result
     */
    func updateApplicationUserProfile(appInstanceId: String, body: UserSchema? = nil, completion: @escaping ((_ result: Swift.Result<UserSchema, Error>) -> Void)) {
        updateApplicationUserProfileWithRequestBuilder(appInstanceId: appInstanceId, body: body).execute(queue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Partial updates on the User Profile properties of the Application User Schema.
     - POST /api/v1/meta/schemas/apps/{appInstanceId}/default
     - Partial updates on the User Profile properties of the Application User Schema.
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter appInstanceId: (path)  
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<UserSchema> 
     */
    public func updateApplicationUserProfileWithRequestBuilder(appInstanceId: String, body: UserSchema? = nil) -> RequestBuilder<UserSchema> {
        var path = "/api/v1/meta/schemas/apps/{appInstanceId}/default"
        let appInstanceIdPreEscape = "\(APIHelper.mapValueToPathItem(appInstanceId))"
        let appInstanceIdPostEscape = appInstanceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{appInstanceId}", with: appInstanceIdPostEscape, options: .literal, range: nil)
        let URLString = configuration.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(configuration.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<UserSchema>.Type = OktaSdkAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter schemaId: (path)  
     - parameter userSchema: (body)  
     - returns: AnyPublisher<UserSchema, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func updateUserProfile(schemaId: String, userSchema: UserSchema) -> AnyPublisher<UserSchema, Error> {
        return Future<UserSchema, Error>.init { promise in
            updateUserProfileWithRequestBuilder(schemaId: schemaId, userSchema: userSchema).execute(queue) { result -> Void in
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

     - parameter schemaId: (path)  
     - parameter userSchema: (body)  
     - parameter completion: completion handler to receive the result
     */
    func updateUserProfile(schemaId: String, userSchema: UserSchema, completion: @escaping ((_ result: Swift.Result<UserSchema, Error>) -> Void)) {
        updateUserProfileWithRequestBuilder(schemaId: schemaId, userSchema: userSchema).execute(queue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     - POST /api/v1/meta/schemas/user/{schemaId}
     - Partial updates on the User Profile properties of the user schema.
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter schemaId: (path)  
     - parameter userSchema: (body)  
     - returns: RequestBuilder<UserSchema> 
     */
    public func updateUserProfileWithRequestBuilder(schemaId: String, userSchema: UserSchema) -> RequestBuilder<UserSchema> {
        var path = "/api/v1/meta/schemas/user/{schemaId}"
        let schemaIdPreEscape = "\(APIHelper.mapValueToPathItem(schemaId))"
        let schemaIdPostEscape = schemaIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{schemaId}", with: schemaIdPostEscape, options: .literal, range: nil)
        let URLString = configuration.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userSchema)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(configuration.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<UserSchema>.Type = OktaSdkAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
}
