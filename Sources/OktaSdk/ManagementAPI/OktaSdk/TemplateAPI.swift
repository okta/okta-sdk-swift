//
// Copyright (c) 2021-Present, Okta, Inc. and/or its affiliates. All rights reserved.
// The Okta software accompanied by this notice is provided pursuant to the Apache License, Version 2.0 (the "License.")
//
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0.
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//
// See the License for the specific language governing permissions and limitations under the License.
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

#if canImport(Combine)
import Combine
#endif

public extension OktaClient {

    struct TemplateAPI: OktaClientAPI {
        internal let baseURL: URL
        internal let session: URLSession


        internal func createSmsTemplateURLRequest(smsTemplate: SmsTemplate) throws -> URLRequest {
            try request(to: "/api/v1/templates/sms", method: "POST", body: smsTemplate)
        }

        /**
         Add SMS Template
         
         - parameter smsTemplate: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func createSmsTemplate(smsTemplate: SmsTemplate, completion: @escaping (Result<OktaResponse<SmsTemplate>, Error>) -> Void) {
            do {
                send(try createSmsTemplateURLRequest(smsTemplate: smsTemplate), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Add SMS Template
         
         - parameter smsTemplate: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func createSmsTemplateAsync(smsTemplate: SmsTemplate) async throws -> OktaResponse<SmsTemplate> {
            try await send(try createSmsTemplateURLRequest(smsTemplate: smsTemplate))
        }

        #if canImport(Combine)
        /**
         Add SMS Template
         
         - parameter smsTemplate: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func createSmsTemplate(smsTemplate: SmsTemplate) throws -> AnyPublisher<OktaResponse<SmsTemplate>, Error> {
            publish(try createSmsTemplateURLRequest(smsTemplate: smsTemplate))
        }
        #endif


        internal func deleteSmsTemplateURLRequest(templateId: String) throws -> URLRequest {
            try request(to: "/api/v1/templates/sms/{templateId}".expanded(using: [
                "templateId": templateId
            ]), method: "DELETE")
        }

        /**
         Remove SMS Template
         
         - parameter templateId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func deleteSmsTemplate(templateId: String, completion: @escaping (Result<OktaResponse<Empty>, Error>) -> Void) {
            do {
                send(try deleteSmsTemplateURLRequest(templateId: templateId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Remove SMS Template
         
         - parameter templateId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func deleteSmsTemplateAsync(templateId: String) async throws -> OktaResponse<Empty> {
            try await send(try deleteSmsTemplateURLRequest(templateId: templateId))
        }

        #if canImport(Combine)
        /**
         Remove SMS Template
         
         - parameter templateId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func deleteSmsTemplate(templateId: String) throws -> AnyPublisher<OktaResponse<Empty>, Error> {
            publish(try deleteSmsTemplateURLRequest(templateId: templateId))
        }
        #endif


        internal func getSmsTemplateURLRequest(templateId: String) throws -> URLRequest {
            try request(to: "/api/v1/templates/sms/{templateId}".expanded(using: [
                "templateId": templateId
            ]), method: "GET")
        }

        /**
         Get SMS Template
         
         - parameter templateId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getSmsTemplate(templateId: String, completion: @escaping (Result<OktaResponse<SmsTemplate>, Error>) -> Void) {
            do {
                send(try getSmsTemplateURLRequest(templateId: templateId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Get SMS Template
         
         - parameter templateId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getSmsTemplateAsync(templateId: String) async throws -> OktaResponse<SmsTemplate> {
            try await send(try getSmsTemplateURLRequest(templateId: templateId))
        }

        #if canImport(Combine)
        /**
         Get SMS Template
         
         - parameter templateId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getSmsTemplate(templateId: String) throws -> AnyPublisher<OktaResponse<SmsTemplate>, Error> {
            publish(try getSmsTemplateURLRequest(templateId: templateId))
        }
        #endif


        internal func listSmsTemplatesURLRequest(templateType: SmsTemplateType? = nil) throws -> URLRequest {
            try request(to: "/api/v1/templates/sms", method: "GET", query: [
                "templateType": templateType
            ])
        }

        /**
         List SMS Templates
         
         - parameter templateType: (query)  (optional)
         - parameter completion: completion handler to receive the data and the error objects
         */
        func listSmsTemplates(templateType: SmsTemplateType? = nil, completion: @escaping (Result<OktaResponse<[SmsTemplate]>, Error>) -> Void) {
            do {
                send(try listSmsTemplatesURLRequest(templateType: templateType), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         List SMS Templates
         
         - parameter templateType: (query)  (optional)
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func listSmsTemplatesAsync(templateType: SmsTemplateType? = nil) async throws -> OktaResponse<[SmsTemplate]> {
            try await send(try listSmsTemplatesURLRequest(templateType: templateType))
        }

        #if canImport(Combine)
        /**
         List SMS Templates
         
         - parameter templateType: (query)  (optional)
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func listSmsTemplates(templateType: SmsTemplateType? = nil) throws -> AnyPublisher<OktaResponse<[SmsTemplate]>, Error> {
            publish(try listSmsTemplatesURLRequest(templateType: templateType))
        }
        #endif


        internal func partialUpdateSmsTemplateURLRequest(templateId: String, smsTemplate: SmsTemplate) throws -> URLRequest {
            try request(to: "/api/v1/templates/sms/{templateId}".expanded(using: [
                "templateId": templateId
            ]), method: "POST", body: smsTemplate)
        }

        /**
         Partial SMS Template Update
         
         - parameter templateId: (path)  
         - parameter smsTemplate: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func partialUpdateSmsTemplate(templateId: String, smsTemplate: SmsTemplate, completion: @escaping (Result<OktaResponse<SmsTemplate>, Error>) -> Void) {
            do {
                send(try partialUpdateSmsTemplateURLRequest(templateId: templateId, smsTemplate: smsTemplate), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Partial SMS Template Update
         
         - parameter templateId: (path)  
         - parameter smsTemplate: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func partialUpdateSmsTemplateAsync(templateId: String, smsTemplate: SmsTemplate) async throws -> OktaResponse<SmsTemplate> {
            try await send(try partialUpdateSmsTemplateURLRequest(templateId: templateId, smsTemplate: smsTemplate))
        }

        #if canImport(Combine)
        /**
         Partial SMS Template Update
         
         - parameter templateId: (path)  
         - parameter smsTemplate: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func partialUpdateSmsTemplate(templateId: String, smsTemplate: SmsTemplate) throws -> AnyPublisher<OktaResponse<SmsTemplate>, Error> {
            publish(try partialUpdateSmsTemplateURLRequest(templateId: templateId, smsTemplate: smsTemplate))
        }
        #endif


        internal func updateSmsTemplateURLRequest(templateId: String, smsTemplate: SmsTemplate) throws -> URLRequest {
            try request(to: "/api/v1/templates/sms/{templateId}".expanded(using: [
                "templateId": templateId
            ]), method: "PUT", body: smsTemplate)
        }

        /**
         Update SMS Template
         
         - parameter templateId: (path)  
         - parameter smsTemplate: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func updateSmsTemplate(templateId: String, smsTemplate: SmsTemplate, completion: @escaping (Result<OktaResponse<SmsTemplate>, Error>) -> Void) {
            do {
                send(try updateSmsTemplateURLRequest(templateId: templateId, smsTemplate: smsTemplate), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Update SMS Template
         
         - parameter templateId: (path)  
         - parameter smsTemplate: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func updateSmsTemplateAsync(templateId: String, smsTemplate: SmsTemplate) async throws -> OktaResponse<SmsTemplate> {
            try await send(try updateSmsTemplateURLRequest(templateId: templateId, smsTemplate: smsTemplate))
        }

        #if canImport(Combine)
        /**
         Update SMS Template
         
         - parameter templateId: (path)  
         - parameter smsTemplate: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func updateSmsTemplate(templateId: String, smsTemplate: SmsTemplate) throws -> AnyPublisher<OktaResponse<SmsTemplate>, Error> {
            publish(try updateSmsTemplateURLRequest(templateId: templateId, smsTemplate: smsTemplate))
        }
        #endif

    }
}