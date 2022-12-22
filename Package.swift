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
            url: "https://github.com/SighticAnalytics/sightic-sdk-ios/releases/download/0.3.0/SighticAnalytics.xcframework.zip",
            checksum: "627c0e6e75e5d0cc40fb69a5d993ec826559be102f191661f6684590d66cd35a")
    ]
)     
