// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OktaSdk",
    platforms: [
        .macOS(.v10_11),
        .iOS(.v10)
    ],
    products: [
        .library(name: "OktaSdk", targets: [ "OktaSdk", "OpenApi" ])
    ],
    dependencies: [
        .package(url: "https://github.com/Flight-School/AnyCodable", .exact("0.4.0"))
    ],
    targets: [
        .target(name: "OktaSdk",
            dependencies: [
                .target(name: "OpenApi")
            ]),
        .target(name: "OpenApi",
            dependencies: [
                .product(name: "AnyCodable", package: "AnyCodable")
            ])
    ]
)
