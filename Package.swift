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
            url: "https://github.com/SighticAnalytics/sightic-sdk-ios/releases/download/1.1.0/SighticAnalytics.xcframework.zip",
            checksum: "7ef33eb27f59d7c7a8c57b8649901c139df25e719b51d5d7553d63322e677f91")
    ]
)
