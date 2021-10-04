//
// UserSchemaBaseProperties.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct UserSchemaBaseProperties: Codable, Hashable {

    public var login: UserSchemaAttribute?
    public var firstName: UserSchemaAttribute?
    public var lastName: UserSchemaAttribute?
    public var middleName: UserSchemaAttribute?
    public var honorificPrefix: UserSchemaAttribute?
    public var honorificSuffix: UserSchemaAttribute?
    public var email: UserSchemaAttribute?
    public var title: UserSchemaAttribute?
    public var displayName: UserSchemaAttribute?
    public var nickName: UserSchemaAttribute?
    public var profileUrl: UserSchemaAttribute?
    public var secondEmail: UserSchemaAttribute?
    public var mobilePhone: UserSchemaAttribute?
    public var primaryPhone: UserSchemaAttribute?
    public var streetAddress: UserSchemaAttribute?
    public var city: UserSchemaAttribute?
    public var state: UserSchemaAttribute?
    public var zipCode: UserSchemaAttribute?
    public var countryCode: UserSchemaAttribute?
    public var postalAddress: UserSchemaAttribute?
    public var preferredLanguage: UserSchemaAttribute?
    public var locale: UserSchemaAttribute?
    public var timezone: UserSchemaAttribute?
    public var userType: UserSchemaAttribute?
    public var employeeNumber: UserSchemaAttribute?
    public var costCenter: UserSchemaAttribute?
    public var organization: UserSchemaAttribute?
    public var division: UserSchemaAttribute?
    public var department: UserSchemaAttribute?
    public var managerId: UserSchemaAttribute?
    public var manager: UserSchemaAttribute?

    public init(login: UserSchemaAttribute? = nil, firstName: UserSchemaAttribute? = nil, lastName: UserSchemaAttribute? = nil, middleName: UserSchemaAttribute? = nil, honorificPrefix: UserSchemaAttribute? = nil, honorificSuffix: UserSchemaAttribute? = nil, email: UserSchemaAttribute? = nil, title: UserSchemaAttribute? = nil, displayName: UserSchemaAttribute? = nil, nickName: UserSchemaAttribute? = nil, profileUrl: UserSchemaAttribute? = nil, secondEmail: UserSchemaAttribute? = nil, mobilePhone: UserSchemaAttribute? = nil, primaryPhone: UserSchemaAttribute? = nil, streetAddress: UserSchemaAttribute? = nil, city: UserSchemaAttribute? = nil, state: UserSchemaAttribute? = nil, zipCode: UserSchemaAttribute? = nil, countryCode: UserSchemaAttribute? = nil, postalAddress: UserSchemaAttribute? = nil, preferredLanguage: UserSchemaAttribute? = nil, locale: UserSchemaAttribute? = nil, timezone: UserSchemaAttribute? = nil, userType: UserSchemaAttribute? = nil, employeeNumber: UserSchemaAttribute? = nil, costCenter: UserSchemaAttribute? = nil, organization: UserSchemaAttribute? = nil, division: UserSchemaAttribute? = nil, department: UserSchemaAttribute? = nil, managerId: UserSchemaAttribute? = nil, manager: UserSchemaAttribute? = nil) {
        self.login = login
        self.firstName = firstName
        self.lastName = lastName
        self.middleName = middleName
        self.honorificPrefix = honorificPrefix
        self.honorificSuffix = honorificSuffix
        self.email = email
        self.title = title
        self.displayName = displayName
        self.nickName = nickName
        self.profileUrl = profileUrl
        self.secondEmail = secondEmail
        self.mobilePhone = mobilePhone
        self.primaryPhone = primaryPhone
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        self.countryCode = countryCode
        self.postalAddress = postalAddress
        self.preferredLanguage = preferredLanguage
        self.locale = locale
        self.timezone = timezone
        self.userType = userType
        self.employeeNumber = employeeNumber
        self.costCenter = costCenter
        self.organization = organization
        self.division = division
        self.department = department
        self.managerId = managerId
        self.manager = manager
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case login
        case firstName
        case lastName
        case middleName
        case honorificPrefix
        case honorificSuffix
        case email
        case title
        case displayName
        case nickName
        case profileUrl
        case secondEmail
        case mobilePhone
        case primaryPhone
        case streetAddress
        case city
        case state
        case zipCode
        case countryCode
        case postalAddress
        case preferredLanguage
        case locale
        case timezone
        case userType
        case employeeNumber
        case costCenter
        case organization
        case division
        case department
        case managerId
        case manager
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(login, forKey: .login)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(middleName, forKey: .middleName)
        try container.encodeIfPresent(honorificPrefix, forKey: .honorificPrefix)
        try container.encodeIfPresent(honorificSuffix, forKey: .honorificSuffix)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(nickName, forKey: .nickName)
        try container.encodeIfPresent(profileUrl, forKey: .profileUrl)
        try container.encodeIfPresent(secondEmail, forKey: .secondEmail)
        try container.encodeIfPresent(mobilePhone, forKey: .mobilePhone)
        try container.encodeIfPresent(primaryPhone, forKey: .primaryPhone)
        try container.encodeIfPresent(streetAddress, forKey: .streetAddress)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(zipCode, forKey: .zipCode)
        try container.encodeIfPresent(countryCode, forKey: .countryCode)
        try container.encodeIfPresent(postalAddress, forKey: .postalAddress)
        try container.encodeIfPresent(preferredLanguage, forKey: .preferredLanguage)
        try container.encodeIfPresent(locale, forKey: .locale)
        try container.encodeIfPresent(timezone, forKey: .timezone)
        try container.encodeIfPresent(userType, forKey: .userType)
        try container.encodeIfPresent(employeeNumber, forKey: .employeeNumber)
        try container.encodeIfPresent(costCenter, forKey: .costCenter)
        try container.encodeIfPresent(organization, forKey: .organization)
        try container.encodeIfPresent(division, forKey: .division)
        try container.encodeIfPresent(department, forKey: .department)
        try container.encodeIfPresent(managerId, forKey: .managerId)
        try container.encodeIfPresent(manager, forKey: .manager)
    }



}

