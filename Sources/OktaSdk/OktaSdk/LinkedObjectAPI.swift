//
// LinkedObjectAPI.swift
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


public class LinkedObjectAPI {
    internal weak var api: OktaSdkAPI?

    internal init(api: OktaSdkAPI) {
        self.api = api
    }

    /**

     - parameter linkedObject: (body)  
     - returns: AnyPublisher<LinkedObject, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func addLinkedObjectDefinition(linkedObject: LinkedObject) -> AnyPublisher<LinkedObject, Error> {
        return Future<LinkedObject, Error>.init { promise in
            guard let builder = self.addLinkedObjectDefinitionWithRequestBuilder(linkedObject: linkedObject) else {
                promise(.failure(DecodableRequestBuilderError.nilAPI))
                return
            }
            builder.execute { result -> Void in
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

     - parameter linkedObject: (body)  
     - parameter completion: completion handler to receive the result
     */
    func addLinkedObjectDefinition(linkedObject: LinkedObject, completion: @escaping ((_ result: Swift.Result<LinkedObject, Error>) -> Void)) {
        guard let builder = addLinkedObjectDefinitionWithRequestBuilder(linkedObject: linkedObject) else {
            completion(.failure(DecodableRequestBuilderError.nilAPI))
            return
        }
        builder.execute { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    internal func addLinkedObjectDefinitionWithRequestBuilder(linkedObject: LinkedObject) -> RequestBuilder<LinkedObject>? {
        guard let api = api else {
            return nil
        }
        let path = "/api/v1/meta/schemas/user/linkedObjects"
        let URLString = api.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: linkedObject)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(api.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<LinkedObject>.Type = api.requestBuilderFactory.getBuilder()

        return requestBuilder.init(api: api, method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter linkedObjectName: (path)  
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func deleteLinkedObjectDefinition(linkedObjectName: String) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            guard let builder = self.deleteLinkedObjectDefinitionWithRequestBuilder(linkedObjectName: linkedObjectName) else {
                promise(.failure(DecodableRequestBuilderError.nilAPI))
                return
            }
            builder.execute { result -> Void in
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

     - parameter linkedObjectName: (path)  
     - parameter completion: completion handler to receive the result
     */
    func deleteLinkedObjectDefinition(linkedObjectName: String, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        guard let builder = deleteLinkedObjectDefinitionWithRequestBuilder(linkedObjectName: linkedObjectName) else {
            completion(.failure(DecodableRequestBuilderError.nilAPI))
            return
        }
        builder.execute { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    internal func deleteLinkedObjectDefinitionWithRequestBuilder(linkedObjectName: String) -> RequestBuilder<Void>? {
        guard let api = api else {
            return nil
        }
        var path = "/api/v1/meta/schemas/user/linkedObjects/{linkedObjectName}"
        let linkedObjectNamePreEscape = "\(APIHelper.mapValueToPathItem(linkedObjectName))"
        let linkedObjectNamePostEscape = linkedObjectNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{linkedObjectName}", with: linkedObjectNamePostEscape, options: .literal, range: nil)
        let URLString = api.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(api.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<Void>.Type = api.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(api: api, method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter linkedObjectName: (path)  
     - returns: AnyPublisher<LinkedObject, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func getLinkedObjectDefinition(linkedObjectName: String) -> AnyPublisher<LinkedObject, Error> {
        return Future<LinkedObject, Error>.init { promise in
            guard let builder = self.getLinkedObjectDefinitionWithRequestBuilder(linkedObjectName: linkedObjectName) else {
                promise(.failure(DecodableRequestBuilderError.nilAPI))
                return
            }
            builder.execute { result -> Void in
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

     - parameter linkedObjectName: (path)  
     - parameter completion: completion handler to receive the result
     */
    func getLinkedObjectDefinition(linkedObjectName: String, completion: @escaping ((_ result: Swift.Result<LinkedObject, Error>) -> Void)) {
        guard let builder = getLinkedObjectDefinitionWithRequestBuilder(linkedObjectName: linkedObjectName) else {
            completion(.failure(DecodableRequestBuilderError.nilAPI))
            return
        }
        builder.execute { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    internal func getLinkedObjectDefinitionWithRequestBuilder(linkedObjectName: String) -> RequestBuilder<LinkedObject>? {
        guard let api = api else {
            return nil
        }
        var path = "/api/v1/meta/schemas/user/linkedObjects/{linkedObjectName}"
        let linkedObjectNamePreEscape = "\(APIHelper.mapValueToPathItem(linkedObjectName))"
        let linkedObjectNamePostEscape = linkedObjectNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{linkedObjectName}", with: linkedObjectNamePostEscape, options: .literal, range: nil)
        let URLString = api.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(api.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<LinkedObject>.Type = api.requestBuilderFactory.getBuilder()

        return requestBuilder.init(api: api, method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - returns: AnyPublisher<[LinkedObject], Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func listLinkedObjectDefinitions() -> AnyPublisher<[LinkedObject], Error> {
        return Future<[LinkedObject], Error>.init { promise in
            guard let builder = self.listLinkedObjectDefinitionsWithRequestBuilder() else {
                promise(.failure(DecodableRequestBuilderError.nilAPI))
                return
            }
            builder.execute { result -> Void in
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

     - parameter completion: completion handler to receive the result
     */
    func listLinkedObjectDefinitions(completion: @escaping ((_ result: Swift.Result<[LinkedObject], Error>) -> Void)) {
        guard let builder = listLinkedObjectDefinitionsWithRequestBuilder() else {
            completion(.failure(DecodableRequestBuilderError.nilAPI))
            return
        }
        builder.execute { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    internal func listLinkedObjectDefinitionsWithRequestBuilder() -> RequestBuilder<[LinkedObject]>? {
        guard let api = api else {
            return nil
        }
        let path = "/api/v1/meta/schemas/user/linkedObjects"
        let URLString = api.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(api.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<[LinkedObject]>.Type = api.requestBuilderFactory.getBuilder()

        return requestBuilder.init(api: api, method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
}
