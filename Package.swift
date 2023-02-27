// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SighticAnalytics",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "SighticAnalytics",
            targets: ["SighticAnalytics"]),
    ],
    targets: [
        .binaryTarget(
            name: "SighticAnalytics",
            url: "https://github.com/SighticAnalytics/sightic-sdk-ios/releases/download/1.0.0-beta.3/SighticAnalytics.xcframework.zip",
            checksum: "4e76b06be7adc58f35c0caa2644d3c4c4d494a1b5df64fd83a567d76e0a1f8bd")
    ]
)
