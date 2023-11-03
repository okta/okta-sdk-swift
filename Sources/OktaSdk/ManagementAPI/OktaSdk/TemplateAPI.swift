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

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public extension OktaClient {

    struct TemplateAPI: OktaClientAPI {
        internal let context: OktaClient.APIContext

        /**
         Create an SMS Template
         
         - parameter smsTemplate: (body)  
         */
        @available(iOS 13.0.0, tvOS 13.0.0, *)
        public func createSmsTemplate(smsTemplate: SmsTemplate) async throws -> OktaResponse<SmsTemplate> {
            try await send(try requestWithBody(to: "/api/v1/templates/sms", method: "POST", body: smsTemplate))
        }

        /**
         Create an SMS Template
         
         - parameter smsTemplate: (body)  
         - parameter completion: Completion block
         */
        public func createSmsTemplate(smsTemplate: SmsTemplate, completion: @escaping (Result<OktaResponse<SmsTemplate>, Error>) -> Void) {
            do {
                send(try requestWithBody(to: "/api/v1/templates/sms", method: "POST", body: smsTemplate), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Delete an SMS Template
         
         - parameter templateId: (path)  
         */
        @discardableResult
        @available(iOS 13.0.0, tvOS 13.0.0, *)
        public func deleteSmsTemplate(templateId: String) async throws -> OktaResponse<Empty> {
            try await send(try request(to: "/api/v1/templates/sms/{templateId}".expanded(using: [
                    "templateId": templateId
                ]), method: "DELETE"))
        }

        /**
         Delete an SMS Template
         
         - parameter templateId: (path)  
         - parameter completion: Completion block
         */
        public func deleteSmsTemplate(templateId: String, completion: @escaping (Result<OktaResponse<Empty>, Error>) -> Void) {
            do {
                send(try request(to: "/api/v1/templates/sms/{templateId}".expanded(using: [
                        "templateId": templateId
                    ]), method: "DELETE"), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Retrieve an SMS Template
         
         - parameter templateId: (path)  
         */
        @available(iOS 13.0.0, tvOS 13.0.0, *)
        public func getSmsTemplate(templateId: String) async throws -> OktaResponse<SmsTemplate> {
            try await send(try request(to: "/api/v1/templates/sms/{templateId}".expanded(using: [
                    "templateId": templateId
                ]), method: "GET"))
        }

        /**
         Retrieve an SMS Template
         
         - parameter templateId: (path)  
         - parameter completion: Completion block
         */
        public func getSmsTemplate(templateId: String, completion: @escaping (Result<OktaResponse<SmsTemplate>, Error>) -> Void) {
            do {
                send(try request(to: "/api/v1/templates/sms/{templateId}".expanded(using: [
                        "templateId": templateId
                    ]), method: "GET"), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         List all SMS Templates
         
         - parameter templateType: (query)  (optional)
         */
        @available(iOS 13.0.0, tvOS 13.0.0, *)
        public func listSmsTemplates(templateType: SmsTemplateType? = nil) async throws -> OktaResponse<[SmsTemplate]> {
            try await send(try request(to: "/api/v1/templates/sms", method: "GET", query: [
                    "templateType": templateType
                ]))
        }

        /**
         List all SMS Templates
         
         - parameter templateType: (query)  (optional)
         - parameter completion: Completion block
         */
        public func listSmsTemplates(templateType: SmsTemplateType? = nil, completion: @escaping (Result<OktaResponse<[SmsTemplate]>, Error>) -> Void) {
            do {
                send(try request(to: "/api/v1/templates/sms", method: "GET", query: [
                        "templateType": templateType
                    ]), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Update an SMS Template
         
         - parameter templateId: (path)  
         - parameter smsTemplate: (body)  
         */
        @available(iOS 13.0.0, tvOS 13.0.0, *)
        public func partialUpdateSmsTemplate(templateId: String, smsTemplate: SmsTemplate) async throws -> OktaResponse<SmsTemplate> {
            try await send(try requestWithBody(to: "/api/v1/templates/sms/{templateId}".expanded(using: [
                    "templateId": templateId
                ]), method: "POST", body: smsTemplate))
        }

        /**
         Update an SMS Template
         
         - parameter templateId: (path)  
         - parameter smsTemplate: (body)  
         - parameter completion: Completion block
         */
        public func partialUpdateSmsTemplate(templateId: String, smsTemplate: SmsTemplate, completion: @escaping (Result<OktaResponse<SmsTemplate>, Error>) -> Void) {
            do {
                send(try requestWithBody(to: "/api/v1/templates/sms/{templateId}".expanded(using: [
                        "templateId": templateId
                    ]), method: "POST", body: smsTemplate), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Replace an SMS Template
         
         - parameter templateId: (path)  
         - parameter smsTemplate: (body)  
         */
        @available(iOS 13.0.0, tvOS 13.0.0, *)
        public func updateSmsTemplate(templateId: String, smsTemplate: SmsTemplate) async throws -> OktaResponse<SmsTemplate> {
            try await send(try requestWithBody(to: "/api/v1/templates/sms/{templateId}".expanded(using: [
                    "templateId": templateId
                ]), method: "PUT", body: smsTemplate))
        }

        /**
         Replace an SMS Template
         
         - parameter templateId: (path)  
         - parameter smsTemplate: (body)  
         - parameter completion: Completion block
         */
        public func updateSmsTemplate(templateId: String, smsTemplate: SmsTemplate, completion: @escaping (Result<OktaResponse<SmsTemplate>, Error>) -> Void) {
            do {
                send(try requestWithBody(to: "/api/v1/templates/sms/{templateId}".expanded(using: [
                        "templateId": templateId
                    ]), method: "PUT", body: smsTemplate), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

    }
}
