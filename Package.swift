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
            url: "https://github.com/SighticAnalytics/sightic-sdk-ios/releases/download/1.1.0-beta.1/SighticAnalytics.xcframework.zip",
            checksum: "8d98fdc28271c0635055dcab7a43de1c519765b3f3f588d8dad368b717ac2105")
    ]
)
