// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SighticAnalytics",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "SighticAnalytics",
            targets: ["SighticAnalytics"]),
    ],
    targets: [
        .binaryTarget(
            name: "SighticAnalytics",
            url: "https://github.com/EyescannerTechnology/sightic-sdk-ios/releases/download/0.0.23/SighticAnalytics.xcframework.zip",
            checksum: "de2f03ccecf257e6eda748e32e7565cb9846a82f6dc5af79337c720ea4b27a70")
    ]
)     
