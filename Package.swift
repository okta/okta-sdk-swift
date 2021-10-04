// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "OktaSdk",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_11),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "OktaSdk",
            targets: ["OktaSdk"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Flight-School/AnyCodable", .exact("0.4.0")),
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
