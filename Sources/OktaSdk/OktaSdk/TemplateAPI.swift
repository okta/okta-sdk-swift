//
// TemplateAPI.swift
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


public struct TemplateAPI {
    internal let configuration: OktaClient.Configuration
    internal let queue: DispatchQueue

    internal init(configuration: OktaClient.Configuration, queue: DispatchQueue) {
        self.configuration = configuration
        self.queue = queue
    }

    /**
     Add SMS Template
     
     - parameter smsTemplate: (body)  
     - returns: AnyPublisher<SmsTemplate, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func createSmsTemplate(smsTemplate: SmsTemplate) -> AnyPublisher<SmsTemplate, Error> {
        return Future<SmsTemplate, Error>.init { promise in
            createSmsTemplateWithRequestBuilder(smsTemplate: smsTemplate).execute(queue) { result -> Void in
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
     Add SMS Template
     
     - parameter smsTemplate: (body)  
     - parameter completion: completion handler to receive the result
     */
    func createSmsTemplate(smsTemplate: SmsTemplate, completion: @escaping ((_ result: Swift.Result<SmsTemplate, Error>) -> Void)) {
        createSmsTemplateWithRequestBuilder(smsTemplate: smsTemplate).execute(queue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Add SMS Template
     - POST /api/v1/templates/sms
     - Adds a new custom SMS template to your organization.
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter smsTemplate: (body)  
     - returns: RequestBuilder<SmsTemplate> 
     */
    public func createSmsTemplateWithRequestBuilder(smsTemplate: SmsTemplate) -> RequestBuilder<SmsTemplate> {
        let path = "/api/v1/templates/sms"
        let URLString = configuration.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: smsTemplate)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(configuration.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<SmsTemplate>.Type = OktaSdkAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Remove SMS Template
     
     - parameter templateId: (path)  
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func deleteSmsTemplate(templateId: String) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            deleteSmsTemplateWithRequestBuilder(templateId: templateId).execute(queue) { result -> Void in
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
     Remove SMS Template
     
     - parameter templateId: (path)  
     - parameter completion: completion handler to receive the result
     */
    func deleteSmsTemplate(templateId: String, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        deleteSmsTemplateWithRequestBuilder(templateId: templateId).execute(queue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Remove SMS Template
     - DELETE /api/v1/templates/sms/{templateId}
     - Removes an SMS template.
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter templateId: (path)  
     - returns: RequestBuilder<Void> 
     */
    public func deleteSmsTemplateWithRequestBuilder(templateId: String) -> RequestBuilder<Void> {
        var path = "/api/v1/templates/sms/{templateId}"
        let templateIdPreEscape = "\(APIHelper.mapValueToPathItem(templateId))"
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
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
     Get SMS Template
     
     - parameter templateId: (path)  
     - returns: AnyPublisher<SmsTemplate, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func getSmsTemplate(templateId: String) -> AnyPublisher<SmsTemplate, Error> {
        return Future<SmsTemplate, Error>.init { promise in
            getSmsTemplateWithRequestBuilder(templateId: templateId).execute(queue) { result -> Void in
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
     Get SMS Template
     
     - parameter templateId: (path)  
     - parameter completion: completion handler to receive the result
     */
    func getSmsTemplate(templateId: String, completion: @escaping ((_ result: Swift.Result<SmsTemplate, Error>) -> Void)) {
        getSmsTemplateWithRequestBuilder(templateId: templateId).execute(queue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get SMS Template
     - GET /api/v1/templates/sms/{templateId}
     - Fetches a specific template by `id`
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter templateId: (path)  
     - returns: RequestBuilder<SmsTemplate> 
     */
    public func getSmsTemplateWithRequestBuilder(templateId: String) -> RequestBuilder<SmsTemplate> {
        var path = "/api/v1/templates/sms/{templateId}"
        let templateIdPreEscape = "\(APIHelper.mapValueToPathItem(templateId))"
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
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

        let requestBuilder: RequestBuilder<SmsTemplate>.Type = OktaSdkAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     List SMS Templates
     
     - parameter templateType: (query)  (optional)
     - returns: AnyPublisher<[SmsTemplate], Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func listSmsTemplates(templateType: String? = nil) -> AnyPublisher<[SmsTemplate], Error> {
        return Future<[SmsTemplate], Error>.init { promise in
            listSmsTemplatesWithRequestBuilder(templateType: templateType).execute(queue) { result -> Void in
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
     List SMS Templates
     
     - parameter templateType: (query)  (optional)
     - parameter completion: completion handler to receive the result
     */
    func listSmsTemplates(templateType: String? = nil, completion: @escaping ((_ result: Swift.Result<[SmsTemplate], Error>) -> Void)) {
        listSmsTemplatesWithRequestBuilder(templateType: templateType).execute(queue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     List SMS Templates
     - GET /api/v1/templates/sms
     - Enumerates custom SMS templates in your organization. A subset of templates can be returned that match a template type.
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter templateType: (query)  (optional)
     - returns: RequestBuilder<[SmsTemplate]> 
     */
    public func listSmsTemplatesWithRequestBuilder(templateType: String? = nil) -> RequestBuilder<[SmsTemplate]> {
        let path = "/api/v1/templates/sms"
        let URLString = configuration.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "templateType": templateType?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(configuration.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<[SmsTemplate]>.Type = OktaSdkAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Partial SMS Template Update
     
     - parameter templateId: (path)  
     - parameter smsTemplate: (body)  
     - returns: AnyPublisher<SmsTemplate, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func partialUpdateSmsTemplate(templateId: String, smsTemplate: SmsTemplate) -> AnyPublisher<SmsTemplate, Error> {
        return Future<SmsTemplate, Error>.init { promise in
            partialUpdateSmsTemplateWithRequestBuilder(templateId: templateId, smsTemplate: smsTemplate).execute(queue) { result -> Void in
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
     Partial SMS Template Update
     
     - parameter templateId: (path)  
     - parameter smsTemplate: (body)  
     - parameter completion: completion handler to receive the result
     */
    func partialUpdateSmsTemplate(templateId: String, smsTemplate: SmsTemplate, completion: @escaping ((_ result: Swift.Result<SmsTemplate, Error>) -> Void)) {
        partialUpdateSmsTemplateWithRequestBuilder(templateId: templateId, smsTemplate: smsTemplate).execute(queue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Partial SMS Template Update
     - POST /api/v1/templates/sms/{templateId}
     - Updates only some of the SMS template properties:
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter templateId: (path)  
     - parameter smsTemplate: (body)  
     - returns: RequestBuilder<SmsTemplate> 
     */
    public func partialUpdateSmsTemplateWithRequestBuilder(templateId: String, smsTemplate: SmsTemplate) -> RequestBuilder<SmsTemplate> {
        var path = "/api/v1/templates/sms/{templateId}"
        let templateIdPreEscape = "\(APIHelper.mapValueToPathItem(templateId))"
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = configuration.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: smsTemplate)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(configuration.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<SmsTemplate>.Type = OktaSdkAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Update SMS Template
     
     - parameter templateId: (path)  
     - parameter smsTemplate: (body)  
     - returns: AnyPublisher<SmsTemplate, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func updateSmsTemplate(templateId: String, smsTemplate: SmsTemplate) -> AnyPublisher<SmsTemplate, Error> {
        return Future<SmsTemplate, Error>.init { promise in
            updateSmsTemplateWithRequestBuilder(templateId: templateId, smsTemplate: smsTemplate).execute(queue) { result -> Void in
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
     Update SMS Template
     
     - parameter templateId: (path)  
     - parameter smsTemplate: (body)  
     - parameter completion: completion handler to receive the result
     */
    func updateSmsTemplate(templateId: String, smsTemplate: SmsTemplate, completion: @escaping ((_ result: Swift.Result<SmsTemplate, Error>) -> Void)) {
        updateSmsTemplateWithRequestBuilder(templateId: templateId, smsTemplate: smsTemplate).execute(queue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Update SMS Template
     - PUT /api/v1/templates/sms/{templateId}
     - Updates the SMS template.
     - API Key:
       - type: apiKey Authorization 
       - name: api_token
     - parameter templateId: (path)  
     - parameter smsTemplate: (body)  
     - returns: RequestBuilder<SmsTemplate> 
     */
    public func updateSmsTemplateWithRequestBuilder(templateId: String, smsTemplate: SmsTemplate) -> RequestBuilder<SmsTemplate> {
        var path = "/api/v1/templates/sms/{templateId}"
        let templateIdPreEscape = "\(APIHelper.mapValueToPathItem(templateId))"
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = configuration.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: smsTemplate)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        var headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
        headerParameters.merge(configuration.customHeaders) { lhs, rhs in
            return lhs
        }

        let requestBuilder: RequestBuilder<SmsTemplate>.Type = OktaSdkAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
}
