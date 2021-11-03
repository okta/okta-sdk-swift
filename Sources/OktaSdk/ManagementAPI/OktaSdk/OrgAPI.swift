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

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public extension OktaClient {

    struct OrgAPI: OktaClientAPI {
        internal let baseURL: URL
        internal let urlSession: URLSession


        internal func extendOktaSupportURLRequest() throws -> URLRequest {
            try request(to: "/api/v1/org/privacy/oktaSupport/extend", method: "POST")
        }

        /**
         Extend Okta Support
         
         - parameter completion: completion handler to receive the data and the error objects
         */
        func extendOktaSupport(completion: @escaping (Result<OktaResponse<OrgOktaSupportSettingsObj>, Error>) -> Void) {
            do {
                send(try extendOktaSupportURLRequest(), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Extend Okta Support
         
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func extendOktaSupport() async throws -> OktaResponse<OrgOktaSupportSettingsObj> {
            try await send(try extendOktaSupportURLRequest())
        }
        #endif

        #if canImport(Combine)
        /**
         Extend Okta Support
         
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func extendOktaSupport() throws -> AnyPublisher<OktaResponse<OrgOktaSupportSettingsObj>, Error> {
            publish(try extendOktaSupportURLRequest())
        }
        #endif


        internal func getOktaCommunicationSettingsURLRequest() throws -> URLRequest {
            try request(to: "/api/v1/org/privacy/oktaCommunication", method: "GET")
        }

        /**
         Get Okta Communication Settings
         
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getOktaCommunicationSettings(completion: @escaping (Result<OktaResponse<OrgOktaCommunicationSetting>, Error>) -> Void) {
            do {
                send(try getOktaCommunicationSettingsURLRequest(), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Get Okta Communication Settings
         
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getOktaCommunicationSettings() async throws -> OktaResponse<OrgOktaCommunicationSetting> {
            try await send(try getOktaCommunicationSettingsURLRequest())
        }
        #endif

        #if canImport(Combine)
        /**
         Get Okta Communication Settings
         
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getOktaCommunicationSettings() throws -> AnyPublisher<OktaResponse<OrgOktaCommunicationSetting>, Error> {
            publish(try getOktaCommunicationSettingsURLRequest())
        }
        #endif


        internal func getOrgContactTypesURLRequest() throws -> URLRequest {
            try request(to: "/api/v1/org/contacts", method: "GET")
        }

        /**
         Get org contact types
         
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getOrgContactTypes(completion: @escaping (Result<OktaResponse<[OrgContactTypeObj]>, Error>) -> Void) {
            do {
                send(try getOrgContactTypesURLRequest(), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Get org contact types
         
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getOrgContactTypes() async throws -> OktaResponse<[OrgContactTypeObj]> {
            try await send(try getOrgContactTypesURLRequest())
        }
        #endif

        #if canImport(Combine)
        /**
         Get org contact types
         
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getOrgContactTypes() throws -> AnyPublisher<OktaResponse<[OrgContactTypeObj]>, Error> {
            publish(try getOrgContactTypesURLRequest())
        }
        #endif


        internal func getOrgContactUserURLRequest(contactType: String) throws -> URLRequest {
            try request(to: "/api/v1/org/contacts/{contactType}".expanded(using: [
                "contactType": contactType
            ]), method: "GET")
        }

        /**
         Get org contact user
         
         - parameter contactType: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getOrgContactUser(contactType: String, completion: @escaping (Result<OktaResponse<OrgContactUser>, Error>) -> Void) {
            do {
                send(try getOrgContactUserURLRequest(contactType: contactType), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Get org contact user
         
         - parameter contactType: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getOrgContactUser(contactType: String) async throws -> OktaResponse<OrgContactUser> {
            try await send(try getOrgContactUserURLRequest(contactType: contactType))
        }
        #endif

        #if canImport(Combine)
        /**
         Get org contact user
         
         - parameter contactType: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getOrgContactUser(contactType: String) throws -> AnyPublisher<OktaResponse<OrgContactUser>, Error> {
            publish(try getOrgContactUserURLRequest(contactType: contactType))
        }
        #endif


        internal func getOrgOktaSupportSettingsURLRequest() throws -> URLRequest {
            try request(to: "/api/v1/org/privacy/oktaSupport", method: "GET")
        }

        /**
         Get Okta Support settings
         
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getOrgOktaSupportSettings(completion: @escaping (Result<OktaResponse<OrgOktaSupportSettingsObj>, Error>) -> Void) {
            do {
                send(try getOrgOktaSupportSettingsURLRequest(), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Get Okta Support settings
         
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getOrgOktaSupportSettings() async throws -> OktaResponse<OrgOktaSupportSettingsObj> {
            try await send(try getOrgOktaSupportSettingsURLRequest())
        }
        #endif

        #if canImport(Combine)
        /**
         Get Okta Support settings
         
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getOrgOktaSupportSettings() throws -> AnyPublisher<OktaResponse<OrgOktaSupportSettingsObj>, Error> {
            publish(try getOrgOktaSupportSettingsURLRequest())
        }
        #endif


        internal func getOrgPreferencesURLRequest() throws -> URLRequest {
            try request(to: "/api/v1/org/preferences", method: "GET")
        }

        /**
         Get org preferences
         
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getOrgPreferences(completion: @escaping (Result<OktaResponse<OrgPreferences>, Error>) -> Void) {
            do {
                send(try getOrgPreferencesURLRequest(), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Get org preferences
         
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getOrgPreferences() async throws -> OktaResponse<OrgPreferences> {
            try await send(try getOrgPreferencesURLRequest())
        }
        #endif

        #if canImport(Combine)
        /**
         Get org preferences
         
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getOrgPreferences() throws -> AnyPublisher<OktaResponse<OrgPreferences>, Error> {
            publish(try getOrgPreferencesURLRequest())
        }
        #endif


        internal func getOrgSettingsURLRequest() throws -> URLRequest {
            try request(to: "/api/v1/org", method: "GET")
        }

        /**
         Get org settings
         
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getOrgSettings(completion: @escaping (Result<OktaResponse<OrgSetting>, Error>) -> Void) {
            do {
                send(try getOrgSettingsURLRequest(), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Get org settings
         
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getOrgSettings() async throws -> OktaResponse<OrgSetting> {
            try await send(try getOrgSettingsURLRequest())
        }
        #endif

        #if canImport(Combine)
        /**
         Get org settings
         
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getOrgSettings() throws -> AnyPublisher<OktaResponse<OrgSetting>, Error> {
            publish(try getOrgSettingsURLRequest())
        }
        #endif


        internal func grantOktaSupportURLRequest() throws -> URLRequest {
            try request(to: "/api/v1/org/privacy/oktaSupport/grant", method: "POST")
        }

        /**
         Grant Okta Support
         
         - parameter completion: completion handler to receive the data and the error objects
         */
        func grantOktaSupport(completion: @escaping (Result<OktaResponse<OrgOktaSupportSettingsObj>, Error>) -> Void) {
            do {
                send(try grantOktaSupportURLRequest(), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Grant Okta Support
         
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func grantOktaSupport() async throws -> OktaResponse<OrgOktaSupportSettingsObj> {
            try await send(try grantOktaSupportURLRequest())
        }
        #endif

        #if canImport(Combine)
        /**
         Grant Okta Support
         
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func grantOktaSupport() throws -> AnyPublisher<OktaResponse<OrgOktaSupportSettingsObj>, Error> {
            publish(try grantOktaSupportURLRequest())
        }
        #endif


        internal func hideOktaUIFooterURLRequest() throws -> URLRequest {
            try request(to: "/api/v1/org/preferences/hideEndUserFooter", method: "POST")
        }

        /**
         Show Okta UI Footer
         
         - parameter completion: completion handler to receive the data and the error objects
         */
        func hideOktaUIFooter(completion: @escaping (Result<OktaResponse<OrgPreferences>, Error>) -> Void) {
            do {
                send(try hideOktaUIFooterURLRequest(), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Show Okta UI Footer
         
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func hideOktaUIFooter() async throws -> OktaResponse<OrgPreferences> {
            try await send(try hideOktaUIFooterURLRequest())
        }
        #endif

        #if canImport(Combine)
        /**
         Show Okta UI Footer
         
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func hideOktaUIFooter() throws -> AnyPublisher<OktaResponse<OrgPreferences>, Error> {
            publish(try hideOktaUIFooterURLRequest())
        }
        #endif


        internal func optInUsersToOktaCommunicationEmailsURLRequest() throws -> URLRequest {
            try request(to: "/api/v1/org/privacy/oktaCommunication/optIn", method: "POST")
        }

        /**
         Opt in all users to Okta Communication emails
         
         - parameter completion: completion handler to receive the data and the error objects
         */
        func optInUsersToOktaCommunicationEmails(completion: @escaping (Result<OktaResponse<OrgOktaCommunicationSetting>, Error>) -> Void) {
            do {
                send(try optInUsersToOktaCommunicationEmailsURLRequest(), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Opt in all users to Okta Communication emails
         
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func optInUsersToOktaCommunicationEmails() async throws -> OktaResponse<OrgOktaCommunicationSetting> {
            try await send(try optInUsersToOktaCommunicationEmailsURLRequest())
        }
        #endif

        #if canImport(Combine)
        /**
         Opt in all users to Okta Communication emails
         
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func optInUsersToOktaCommunicationEmails() throws -> AnyPublisher<OktaResponse<OrgOktaCommunicationSetting>, Error> {
            publish(try optInUsersToOktaCommunicationEmailsURLRequest())
        }
        #endif


        internal func optOutUsersFromOktaCommunicationEmailsURLRequest() throws -> URLRequest {
            try request(to: "/api/v1/org/privacy/oktaCommunication/optOut", method: "POST")
        }

        /**
         Opt out all users from Okta Communication emails
         
         - parameter completion: completion handler to receive the data and the error objects
         */
        func optOutUsersFromOktaCommunicationEmails(completion: @escaping (Result<OktaResponse<OrgOktaCommunicationSetting>, Error>) -> Void) {
            do {
                send(try optOutUsersFromOktaCommunicationEmailsURLRequest(), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Opt out all users from Okta Communication emails
         
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func optOutUsersFromOktaCommunicationEmails() async throws -> OktaResponse<OrgOktaCommunicationSetting> {
            try await send(try optOutUsersFromOktaCommunicationEmailsURLRequest())
        }
        #endif

        #if canImport(Combine)
        /**
         Opt out all users from Okta Communication emails
         
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func optOutUsersFromOktaCommunicationEmails() throws -> AnyPublisher<OktaResponse<OrgOktaCommunicationSetting>, Error> {
            publish(try optOutUsersFromOktaCommunicationEmailsURLRequest())
        }
        #endif


        internal func partialUpdateOrgSettingURLRequest(orgSetting: OrgSetting? = nil) throws -> URLRequest {
            try request(to: "/api/v1/org", method: "POST", body: orgSetting)
        }

        /**
         Partial update Org Setting
         
         - parameter orgSetting: (body)  (optional)
         - parameter completion: completion handler to receive the data and the error objects
         */
        func partialUpdateOrgSetting(orgSetting: OrgSetting? = nil, completion: @escaping (Result<OktaResponse<OrgSetting>, Error>) -> Void) {
            do {
                send(try partialUpdateOrgSettingURLRequest(orgSetting: orgSetting), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Partial update Org Setting
         
         - parameter orgSetting: (body)  (optional)
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func partialUpdateOrgSetting(orgSetting: OrgSetting? = nil) async throws -> OktaResponse<OrgSetting> {
            try await send(try partialUpdateOrgSettingURLRequest(orgSetting: orgSetting))
        }
        #endif

        #if canImport(Combine)
        /**
         Partial update Org Setting
         
         - parameter orgSetting: (body)  (optional)
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func partialUpdateOrgSetting(orgSetting: OrgSetting? = nil) throws -> AnyPublisher<OktaResponse<OrgSetting>, Error> {
            publish(try partialUpdateOrgSettingURLRequest(orgSetting: orgSetting))
        }
        #endif


        internal func revokeOktaSupportURLRequest() throws -> URLRequest {
            try request(to: "/api/v1/org/privacy/oktaSupport/revoke", method: "POST")
        }

        /**
         Extend Okta Support
         
         - parameter completion: completion handler to receive the data and the error objects
         */
        func revokeOktaSupport(completion: @escaping (Result<OktaResponse<OrgOktaSupportSettingsObj>, Error>) -> Void) {
            do {
                send(try revokeOktaSupportURLRequest(), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Extend Okta Support
         
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func revokeOktaSupport() async throws -> OktaResponse<OrgOktaSupportSettingsObj> {
            try await send(try revokeOktaSupportURLRequest())
        }
        #endif

        #if canImport(Combine)
        /**
         Extend Okta Support
         
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func revokeOktaSupport() throws -> AnyPublisher<OktaResponse<OrgOktaSupportSettingsObj>, Error> {
            publish(try revokeOktaSupportURLRequest())
        }
        #endif


        internal func showOktaUIFooterURLRequest() throws -> URLRequest {
            try request(to: "/api/v1/org/preferences/showEndUserFooter", method: "POST")
        }

        /**
         Show Okta UI Footer
         
         - parameter completion: completion handler to receive the data and the error objects
         */
        func showOktaUIFooter(completion: @escaping (Result<OktaResponse<OrgPreferences>, Error>) -> Void) {
            do {
                send(try showOktaUIFooterURLRequest(), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Show Okta UI Footer
         
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func showOktaUIFooter() async throws -> OktaResponse<OrgPreferences> {
            try await send(try showOktaUIFooterURLRequest())
        }
        #endif

        #if canImport(Combine)
        /**
         Show Okta UI Footer
         
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func showOktaUIFooter() throws -> AnyPublisher<OktaResponse<OrgPreferences>, Error> {
            publish(try showOktaUIFooterURLRequest())
        }
        #endif


        internal func updateOrgContactUserURLRequest(contactType: String, userIdString: UserIdString) throws -> URLRequest {
            try request(to: "/api/v1/org/contacts/{contactType}".expanded(using: [
                "contactType": contactType
            ]), method: "PUT", body: userIdString)
        }

        /**
         Update org contact user
         
         - parameter contactType: (path)  
         - parameter userIdString: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func updateOrgContactUser(contactType: String, userIdString: UserIdString, completion: @escaping (Result<OktaResponse<OrgContactUser>, Error>) -> Void) {
            do {
                send(try updateOrgContactUserURLRequest(contactType: contactType, userIdString: userIdString), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Update org contact user
         
         - parameter contactType: (path)  
         - parameter userIdString: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func updateOrgContactUser(contactType: String, userIdString: UserIdString) async throws -> OktaResponse<OrgContactUser> {
            try await send(try updateOrgContactUserURLRequest(contactType: contactType, userIdString: userIdString))
        }
        #endif

        #if canImport(Combine)
        /**
         Update org contact user
         
         - parameter contactType: (path)  
         - parameter userIdString: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func updateOrgContactUser(contactType: String, userIdString: UserIdString) throws -> AnyPublisher<OktaResponse<OrgContactUser>, Error> {
            publish(try updateOrgContactUserURLRequest(contactType: contactType, userIdString: userIdString))
        }
        #endif


        internal func updateOrgSettingURLRequest(orgSetting: OrgSetting) throws -> URLRequest {
            try request(to: "/api/v1/org", method: "PUT", body: orgSetting)
        }

        /**
         Update Org setting
         
         - parameter orgSetting: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func updateOrgSetting(orgSetting: OrgSetting, completion: @escaping (Result<OktaResponse<OrgSetting>, Error>) -> Void) {
            do {
                send(try updateOrgSettingURLRequest(orgSetting: orgSetting), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        #if swift(>=5.5.1) && !os(Linux)
        /**
         Update Org setting
         
         - parameter orgSetting: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func updateOrgSetting(orgSetting: OrgSetting) async throws -> OktaResponse<OrgSetting> {
            try await send(try updateOrgSettingURLRequest(orgSetting: orgSetting))
        }
        #endif

        #if canImport(Combine)
        /**
         Update Org setting
         
         - parameter orgSetting: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func updateOrgSetting(orgSetting: OrgSetting) throws -> AnyPublisher<OktaResponse<OrgSetting>, Error> {
            publish(try updateOrgSettingURLRequest(orgSetting: orgSetting))
        }
        #endif

    }
}
