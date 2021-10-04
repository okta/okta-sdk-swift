//
// DomainAPI.swift
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

    struct DomainAPI: OktaClientAPI {
        internal let baseURL: URL
        internal let session: URLSession


        internal func createCertificateURLRequest(domainId: String, domainCertificate: DomainCertificate) throws -> URLRequest {
            try request(to: "/api/v1/domains/{domainId}/certificate".expanded(using: [
                "domainId": domainId
            ]), method: "PUT", body: domainCertificate)
        }

        /**
         Create Certificate
         
         - parameter domainId: (path)  
         - parameter domainCertificate: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func createCertificate(domainId: String, domainCertificate: DomainCertificate, completion: @escaping (Result<OktaResponse<Empty>, Error>) -> Void) {
            do {
                send(try createCertificateURLRequest(domainId: domainId, domainCertificate: domainCertificate), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Create Certificate
         
         - parameter domainId: (path)  
         - parameter domainCertificate: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func createCertificateAsync(domainId: String, domainCertificate: DomainCertificate) async throws -> OktaResponse<Empty> {
            try await send(try createCertificateURLRequest(domainId: domainId, domainCertificate: domainCertificate))
        }

        #if canImport(Combine)
        /**
         Create Certificate
         
         - parameter domainId: (path)  
         - parameter domainCertificate: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func createCertificate(domainId: String, domainCertificate: DomainCertificate) throws -> AnyPublisher<OktaResponse<Empty>, Error> {
            publish(try createCertificateURLRequest(domainId: domainId, domainCertificate: domainCertificate))
        }
        #endif


        internal func createDomainURLRequest(domain: Domain) throws -> URLRequest {
            try request(to: "/api/v1/domains", method: "POST", body: domain)
        }

        /**
         Create Domain
         
         - parameter domain: (body)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func createDomain(domain: Domain, completion: @escaping (Result<OktaResponse<DomainResponse>, Error>) -> Void) {
            do {
                send(try createDomainURLRequest(domain: domain), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Create Domain
         
         - parameter domain: (body)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func createDomainAsync(domain: Domain) async throws -> OktaResponse<DomainResponse> {
            try await send(try createDomainURLRequest(domain: domain))
        }

        #if canImport(Combine)
        /**
         Create Domain
         
         - parameter domain: (body)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func createDomain(domain: Domain) throws -> AnyPublisher<OktaResponse<DomainResponse>, Error> {
            publish(try createDomainURLRequest(domain: domain))
        }
        #endif


        internal func deleteDomainURLRequest(domainId: String) throws -> URLRequest {
            try request(to: "/api/v1/domains/{domainId}".expanded(using: [
                "domainId": domainId
            ]), method: "DELETE")
        }

        /**
         Delete Domain
         
         - parameter domainId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func deleteDomain(domainId: String, completion: @escaping (Result<OktaResponse<Empty>, Error>) -> Void) {
            do {
                send(try deleteDomainURLRequest(domainId: domainId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Delete Domain
         
         - parameter domainId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func deleteDomainAsync(domainId: String) async throws -> OktaResponse<Empty> {
            try await send(try deleteDomainURLRequest(domainId: domainId))
        }

        #if canImport(Combine)
        /**
         Delete Domain
         
         - parameter domainId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func deleteDomain(domainId: String) throws -> AnyPublisher<OktaResponse<Empty>, Error> {
            publish(try deleteDomainURLRequest(domainId: domainId))
        }
        #endif


        internal func getDomainURLRequest(domainId: String) throws -> URLRequest {
            try request(to: "/api/v1/domains/{domainId}".expanded(using: [
                "domainId": domainId
            ]), method: "GET")
        }

        /**
         Get Domain
         
         - parameter domainId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func getDomain(domainId: String, completion: @escaping (Result<OktaResponse<DomainResponse>, Error>) -> Void) {
            do {
                send(try getDomainURLRequest(domainId: domainId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Get Domain
         
         - parameter domainId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func getDomainAsync(domainId: String) async throws -> OktaResponse<DomainResponse> {
            try await send(try getDomainURLRequest(domainId: domainId))
        }

        #if canImport(Combine)
        /**
         Get Domain
         
         - parameter domainId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func getDomain(domainId: String) throws -> AnyPublisher<OktaResponse<DomainResponse>, Error> {
            publish(try getDomainURLRequest(domainId: domainId))
        }
        #endif


        internal func listDomainsURLRequest() throws -> URLRequest {
            try request(to: "/api/v1/domains", method: "GET")
        }

        /**
         List Domains
         
         - parameter completion: completion handler to receive the data and the error objects
         */
        func listDomains(completion: @escaping (Result<OktaResponse<DomainListResponse>, Error>) -> Void) {
            do {
                send(try listDomainsURLRequest(), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         List Domains
         
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func listDomainsAsync() async throws -> OktaResponse<DomainListResponse> {
            try await send(try listDomainsURLRequest())
        }

        #if canImport(Combine)
        /**
         List Domains
         
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func listDomains() throws -> AnyPublisher<OktaResponse<DomainListResponse>, Error> {
            publish(try listDomainsURLRequest())
        }
        #endif


        internal func verifyDomainURLRequest(domainId: String) throws -> URLRequest {
            try request(to: "/api/v1/domains/{domainId}/verify".expanded(using: [
                "domainId": domainId
            ]), method: "POST")
        }

        /**
         Verify Domain
         
         - parameter domainId: (path)  
         - parameter completion: completion handler to receive the data and the error objects
         */
        func verifyDomain(domainId: String, completion: @escaping (Result<OktaResponse<DomainResponse>, Error>) -> Void) {
            do {
                send(try verifyDomainURLRequest(domainId: domainId), completion: completion)
            } catch {
                completion(.failure(error))
            }
        }

        /**
         Verify Domain
         
         - parameter domainId: (path)  
         */
        @available(iOS 15.0, tvOS 15.0, macOS 12.0, *)
        func verifyDomainAsync(domainId: String) async throws -> OktaResponse<DomainResponse> {
            try await send(try verifyDomainURLRequest(domainId: domainId))
        }

        #if canImport(Combine)
        /**
         Verify Domain
         
         - parameter domainId: (path)  
         */
        @available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
        func verifyDomain(domainId: String) throws -> AnyPublisher<OktaResponse<DomainResponse>, Error> {
            publish(try verifyDomainURLRequest(domainId: domainId))
        }
        #endif

    }
}
