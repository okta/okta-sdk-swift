// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "OktaSdk",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .tvOS(.v15)
    ],
    products: [
        .library(
            name: "OktaSdk",
            targets: ["OktaSdk"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Flight-School/AnyCodable", from: "0.4.0"),
    ],
    targets: [
        .target(
            name: "OktaSdk",
            dependencies: ["AnyCodable"],
            path: "Sources/OktaSdk/"
        ),
        .testTarget(name: "OktaSdkTests",
                    dependencies: ["OktaSdk"])
    ]
)
