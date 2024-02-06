// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SighticAnalytics",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "SighticAnalytics", targets: ["SighticAnalytics"]),
    ],
    targets: [
        .binaryTarget(name: "SighticAnalytics", url: "https://github.com/SighticAnalytics/sightic-sdk-ios/releases/download/2.0.0/SighticAnalytics.xcframework.zip", checksum: "6f2cd5ff58b38bc90a7af3209515b90e37261a306ea4ac39430ccb352f2d9736"),
    ]
)
