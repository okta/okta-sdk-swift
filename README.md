[<img src="https://aws1.discourse-cdn.com/standard14/uploads/oktadev/original/1X/0c6402653dfb70edc661d4976a43a46f33e5e919.png" align="right" width="256px"/>](https://devforum.okta.com/)
[![Build Status](https://img.shields.io/travis/okta/okta-sdk-swift.svg?logo=travis)](https://travis-ci.org/okta/okta-sdk-swift)
![Beta Release](https://img.shields.io/badge/Beta-Upcoming-inactive.svg)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Support](https://img.shields.io/badge/support-Developer%20Forum-blue.svg)][devforum]

# Okta Swift Management SDK

- [Release Status](#release-status)
- [Need help?](#need-help)
- [Getting Started](#getting-started)
- [Usage Guide](#usage-guide)
- [Exceptions](#exceptions)
- [Pagination](#pagination)
- [Logging](#logging)
- [Configuration Reference](#configuration-reference)
- [Rate Limiting](#rate-limiting)
- [Building the SDK](#building-the-sdk)
- [Contributing](#contributing)

This repository contains the Okta management SDK for Swift. This SDK can be used in your server-side code to interact with the Okta management API and:

- Create and update users with the [Users API][users-api-docs]
- Add security factors to users with the [Factors API][factors-api-docs]
- Manage groups with the [Groups API][groups-api-docs]
- Manage applications with the [Apps API][apps-api-docs]
- Much more!

> Requires Swift version 5.5 or higher.

You can also learn more on the [Okta + Swift][lang-landing-page] page in our documentation.

> *WARNING:* This SDK is not intended for use within production applications, or applications deployed to untrusted devices (e.g. via the app store or private distribution). Embedding SSWS tokens within applications is unsafe, and is not recommended.
 
## Release status

This library uses semantic versioning and follows Okta's [Library Version Policy][okta-library-versioning].

| Version | Status                           |
| ------- | -------------------------------- |
| 0.x     | :warning: Beta Release           |

The latest release can always be found on the [releases page][github-releases].

## Need help?

*Note:* This SDK is in beta status, and is currently unsupported. At this time, there are no plans for this to become supported, and will remain in beta status. If you run into problems using the SDK, you can:

- Ask questions on the [Okta Developer Forums][devforum]
- Post [issues on GitHub][github-issues] (for code errors)

## Getting started

To get started, you will need:

- An Okta account, called an _organization_ (sign up for a free [developer organization][dev-okta-signup] if you need one).
- An [API token][api-token-docs].
- Xcode targeting iOS 10 or above, tvOS 10 or above, or macOS 12 or above.

### Swift Package Manager

Add the following to the dependencies attribute defined in your Package.swift file. You can select the version using the majorVersion and minor parameters. For example:

```swift
dependencies: [
    .Package(url: "https://github.com/okta/okta-sdk-swift.git", majorVersion: <majorVersion>, minor: <minor>)
]
```

### Initializing a client

Construct a client instance by passing it your Okta domain name and API token:

```swift
import OktaSdk

let config = OktaClient.Configuration(apiKey: "{API_TOKEN}", domain: "{{yourOktaDomain}}")
let client = OktaClient(configuration: config)
```

Once you initialize a `client`, you can call methods to make requests to the Okta API.

### Making API calls

The client provides completion handler-based methods, as well as async methods using Swift Concurrency, for each API call.

Most methods are grouped by the API endpoint they belong to. For example, methods that call the [Users API][users-api-docs] are organized under the User resource client `client.user.*`.

### Response Objects

All results, regardless of the function type, will return an instance of `OktaResponse<T>`, whose embedded type is generic.  This response object contains information related to the response, such as rate limit information, pagination links, and the `requestId` returned from the server.

```swift
let response = try await client.user.listUsers()

// Use the response
```

## Usage guide

These examples will help you understand how to use this library.

```swift
import OktaSdk

func getUsers() async {
    for user in try await client.user.listUsers().result {
        print(user.id)
    }
}
```

### Authenticate a User

This library should only be used with the Okta management API.

> Assume the client is instantiated before each example below. The following samples will use the Swift Concurrency variant functions for brevity.
>
> ```swift
> import OktaSdk
> let client = OktaClient(configuration: .init(apiKey: "API_TOKEN", domain: "test.okta.com"))
> ```

### Get a User

```swift
let user = try await client.user.getUser(userId: "USER_ID").result
```

### List all Users

```swift
let users = try await client.user.listUsers().result
```

### Filter or search for Users

```swift
// Query parameters are optional on methods that can use them!
// Check the method definition for details on which query parameters are accepted.
let users = try await client.listUsers(filter: "status eq \"ACTIVE\"").result
```

### Create a User

```swift
// Create Password
let password = PasswordCredential(value: "Password123")

// Create User Credentials
let userCreds = UserCredentials(password: password)

// Create User Profile and CreateUser Request
let userProfile = UserProfile()
userProfile.firstName = "John"
userProfile.lastName = "Doe"
userProfile.email = "John.Doe"
userProfile.login = "John.Doe"

let createUserReq = CreateUserRequest(credentials: userCreds,
                                      profile: userProfile)

// Create User
let user = try await client.user.createUser(createUserRequest: createUserReq).result
```

### Update a User

```swift
// Assume user object saved to variable `user`
user.profile.nickName = "Oktanaut"

// Update User with new details
let result = try await client.user.updateUser(userId: user.id, user: user)
```

### Remove a User

You must first deactivate the user, and then you can delete the user.

```swift
// Assuming user starts off with a status of 'ACTIVE'

// Deactivate
try await client.user.deactivateOrDeleteUser(userId: user.id)

// Then delete
try await client.user.deactivateOrDeleteUser(userId: user.id)
```

### List a User's Groups

```swift
let result = try await client.listUserGroups(userId: user.id)
```

### Create a Group

```swift
// Create Group Model
let profile = GroupProfile(name: "Group-Test")

let groupModel = Group(profile: profile)

// Create Group
let result = try await client.group.createGroup(group: groupModel)
```

### Add a User to a Group

```swift
let result = try await client.group.addUserToGroup(groupId: group.id, userId: user.id)
```

### List a User's enrolled Factors

```swift
let result = try await client.userFactor.listSupportedFactors(userId: user.id)
```

## Pagination

If your request comes back with more than the default, you can request the next page.

Example of listing users 1 at a time:

```swift
var response = try await client.users.listUsers(limit: 1)
var users = response.result

// Check if there more pages follow
while result.links.next != nil {
    response = try await client.fetch(.next, from: response)

    users.append(contentsOf: response.result)
}
```

## Rate Limiting

The Okta API will return 429 responses if too many requests are made within a given time. Please see [Rate Limiting at Okta][rate-limiting-okta] for a complete list of which endpoints are rate limited. When a 429 error is received, the `OktaResponse.rateInfo.reset` value will tell you the time at which you can retry.

## Contributing

We're happy to accept contributions and PRs! Please see the [Contribution Guide](CONTRIBUTING.md) to understand how to structure a contribution.

### Updating to the new spec

Generating a new version of the SDK using an updated spec can be done as follows:

```sh
docker run --rm -v $PWD:/local \
    openapitools/openapi-generator-cli generate  \
    --api-package OktaSdk \
    --generator-name swift5 \
    --git-host github.com \
    --git-repo-id okta-sdk-swift \
    --git-user-id okta \
    --config /local/openapi-config.yaml \
    --input-spec /local/management-codegen.yaml \
    --template-dir /local/openapi-template \
    --output /local
```

[devforum]: https://devforum.okta.com/
[github-issues]: https://github.com/okta/okta-sdk-swift/issues
[github-releases]: https://github.com/okta/okta-sdk-swift/releases
[okta developer forum]: https://devforum.okta.com/
[lang-landing-page]: https://developer.okta.com/code/swift/
[rate-limiting-okta]: https://developer.okta.com/docs/reference/rate-limits/
[users-api-docs]: https://developer.okta.com/docs/api/resources/users
[groups-api-docs]: https://developer.okta.com/docs/api/resources/groups
[apps-api-docs]: https://developer.okta.com/docs/api/resources/apps
[factors-api-docs]: https://developer.okta.com/docs/api/resources/factors
[okta-library-versioning]: https://developer.okta.com/code/library-versions/
[oauth-guides]: https://developer.okta.com/docs/guides/implement-oauth-for-okta/overview/
[dev-okta-signup]: https://developer.okta.com/signup
[api-token-docs]: https://developer.okta.com/docs/api/getting_started/getting_a_token
[swift-concurrency-docs]: https://docs.swift.org/swift-book/LanguageGuide/Concurrency.html
