//
// CAPTCHAAPI.swift
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

    struct CAPTCHAAPI: OktaClientAPI {
        internal let baseURL: URL
        internal let session: URLSession


        internal func createCaptchaInstanceURLRequest(cAPTCHAInstance: CAPTCHAInstance? = nil) throws -> URLRequest {
            try request(to: "/api/v1/captchas", method: "POST", body: cAPTCHAInstance)
        }

        /**
         Create new CAPTCHA instance
         
         - parameter cAPTCHAInstance: (body)  (optional)
         - parameter completion: completion handler to receive the data and the error objects
         */
        func createCaptchaInstance(cAPTCHAInstance: CAPTCHAInstance? = nil, completion: @escaping (Result<OktaResponse<CAPTCHAInstance>, Error>) -> Void) {
            do {
                send(try createCaptchaInstanceURLRequest(cAPTCHAInstance: cAPTCHAInstance), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Create new CAPTCHA instance
         
         - parameter cAPTCHAInstance: (body)  (optional)
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func createCaptchaInstanceAsync(cAPTCHAInstance: CAPTCHAInstance? = nil) async throws -> OktaResponse<CAPTCHAInstance> {
            try await send(try createCaptchaInstanceURLRequest(cAPTCHAInstance: cAPTCHAInstance))
        }

        #if canImport(Combine)
        /**
         Create new CAPTCHA instance
         
         - parameter cAPTCHAInstance: (body)  (optional)
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func createCaptchaInstance(cAPTCHAInstance: CAPTCHAInstance? = nil) throws -> AnyPublisher<OktaResponse<CAPTCHAInstance>, Error> {
            publish(try createCaptchaInstanceURLRequest(cAPTCHAInstance: cAPTCHAInstance))
        }
        #endif


        internal func deleteCaptchaInstanceURLRequest(captchaId: String) throws -> URLRequest {
            try request(to: "/api/v1/captchas/{captchaId}".expanded(using: [
                "captchaId": captchaId
            ]), method: "DELETE")
        }

        /**
         Delete CAPTCHA Instance
         
         - parameter captchaId: (path) id of the CAPTCHA 
         - parameter completion: completion handler to receive the data and the error objects
         */
        func deleteCaptchaInstance(captchaId: String, completion: @escaping (Result<OktaResponse<Empty>, Error>) -> Void) {
            do {
                send(try deleteCaptchaInstanceURLRequest(captchaId: captchaId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Delete CAPTCHA Instance
         
         - parameter captchaId: (path) id of the CAPTCHA 
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func deleteCaptchaInstanceAsync(captchaId: String) async throws -> OktaResponse<Empty> {
            try await send(try deleteCaptchaInstanceURLRequest(captchaId: captchaId))
        }

        #if canImport(Combine)
        /**
         Delete CAPTCHA Instance
         
         - parameter captchaId: (path) id of the CAPTCHA 
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func deleteCaptchaInstance(captchaId: String) throws -> AnyPublisher<OktaResponse<Empty>, Error> {
            publish(try deleteCaptchaInstanceURLRequest(captchaId: captchaId))
        }
        #endif


        internal func getCaptchaInstanceURLRequest(captchaId: String) throws -> URLRequest {
            try request(to: "/api/v1/captchas/{captchaId}".expanded(using: [
                "captchaId": captchaId
            ]), method: "GET")
        }

        /**
         Get CAPTCHA Instance
         
         - parameter captchaId: (path) id of the CAPTCHA 
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getCaptchaInstance(captchaId: String, completion: @escaping (Result<OktaResponse<CAPTCHAInstance>, Error>) -> Void) {
            do {
                send(try getCaptchaInstanceURLRequest(captchaId: captchaId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Get CAPTCHA Instance
         
         - parameter captchaId: (path) id of the CAPTCHA 
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getCaptchaInstanceAsync(captchaId: String) async throws -> OktaResponse<CAPTCHAInstance> {
            try await send(try getCaptchaInstanceURLRequest(captchaId: captchaId))
        }

        #if canImport(Combine)
        /**
         Get CAPTCHA Instance
         
         - parameter captchaId: (path) id of the CAPTCHA 
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getCaptchaInstance(captchaId: String) throws -> AnyPublisher<OktaResponse<CAPTCHAInstance>, Error> {
            publish(try getCaptchaInstanceURLRequest(captchaId: captchaId))
        }
        #endif


        internal func listCaptchaInstancesURLRequest() throws -> URLRequest {
            try request(to: "/api/v1/captchas", method: "GET")
        }

        /**
         List CAPTCHA instances
         
         - parameter completion: completion handler to receive the data and the error objects
         */
        func listCaptchaInstances(completion: @escaping (Result<OktaResponse<[CAPTCHAInstance]>, Error>) -> Void) {
            do {
                send(try listCaptchaInstancesURLRequest(), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         List CAPTCHA instances
         
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func listCaptchaInstancesAsync() async throws -> OktaResponse<[CAPTCHAInstance]> {
            try await send(try listCaptchaInstancesURLRequest())
        }

        #if canImport(Combine)
        /**
         List CAPTCHA instances
         
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func listCaptchaInstances() throws -> AnyPublisher<OktaResponse<[CAPTCHAInstance]>, Error> {
            publish(try listCaptchaInstancesURLRequest())
        }
        #endif


        internal func partialUpdateCaptchaInstanceURLRequest(captchaId: String, cAPTCHAInstance: CAPTCHAInstance) throws -> URLRequest {
            try request(to: "/api/v1/captchas/{captchaId}".expanded(using: [
                "captchaId": captchaId
            ]), method: "POST", body: cAPTCHAInstance)
        }

        /**
         Partial Update CAPTCHA instance
         
         - parameter captchaId: (path) id of the CAPTCHA 
         - parameter cAPTCHAInstance: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func partialUpdateCaptchaInstance(captchaId: String, cAPTCHAInstance: CAPTCHAInstance, completion: @escaping (Result<OktaResponse<CAPTCHAInstance>, Error>) -> Void) {
            do {
                send(try partialUpdateCaptchaInstanceURLRequest(captchaId: captchaId, cAPTCHAInstance: cAPTCHAInstance), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Partial Update CAPTCHA instance
         
         - parameter captchaId: (path) id of the CAPTCHA 
         - parameter cAPTCHAInstance: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func partialUpdateCaptchaInstanceAsync(captchaId: String, cAPTCHAInstance: CAPTCHAInstance) async throws -> OktaResponse<CAPTCHAInstance> {
            try await send(try partialUpdateCaptchaInstanceURLRequest(captchaId: captchaId, cAPTCHAInstance: cAPTCHAInstance))
        }

        #if canImport(Combine)
        /**
         Partial Update CAPTCHA instance
         
         - parameter captchaId: (path) id of the CAPTCHA 
         - parameter cAPTCHAInstance: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func partialUpdateCaptchaInstance(captchaId: String, cAPTCHAInstance: CAPTCHAInstance) throws -> AnyPublisher<OktaResponse<CAPTCHAInstance>, Error> {
            publish(try partialUpdateCaptchaInstanceURLRequest(captchaId: captchaId, cAPTCHAInstance: cAPTCHAInstance))
        }
        #endif


        internal func updateCaptchaInstanceURLRequest(captchaId: String, cAPTCHAInstance: CAPTCHAInstance) throws -> URLRequest {
            try request(to: "/api/v1/captchas/{captchaId}".expanded(using: [
                "captchaId": captchaId
            ]), method: "PUT", body: cAPTCHAInstance)
        }

        /**
         Update CAPTCHA instance
         
         - parameter captchaId: (path) id of the CAPTCHA 
         - parameter cAPTCHAInstance: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func updateCaptchaInstance(captchaId: String, cAPTCHAInstance: CAPTCHAInstance, completion: @escaping (Result<OktaResponse<CAPTCHAInstance>, Error>) -> Void) {
            do {
                send(try updateCaptchaInstanceURLRequest(captchaId: captchaId, cAPTCHAInstance: cAPTCHAInstance), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Update CAPTCHA instance
         
         - parameter captchaId: (path) id of the CAPTCHA 
         - parameter cAPTCHAInstance: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func updateCaptchaInstanceAsync(captchaId: String, cAPTCHAInstance: CAPTCHAInstance) async throws -> OktaResponse<CAPTCHAInstance> {
            try await send(try updateCaptchaInstanceURLRequest(captchaId: captchaId, cAPTCHAInstance: cAPTCHAInstance))
        }

        #if canImport(Combine)
        /**
         Update CAPTCHA instance
         
         - parameter captchaId: (path) id of the CAPTCHA 
         - parameter cAPTCHAInstance: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func updateCaptchaInstance(captchaId: String, cAPTCHAInstance: CAPTCHAInstance) throws -> AnyPublisher<OktaResponse<CAPTCHAInstance>, Error> {
            publish(try updateCaptchaInstanceURLRequest(captchaId: captchaId, cAPTCHAInstance: cAPTCHAInstance))
        }
        #endif

    }
}
