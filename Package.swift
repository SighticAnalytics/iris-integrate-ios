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
            url: "https://github.com/SighticAnalytics/sightic-sdk-ios/releases/download/1.3.0/SighticAnalytics.xcframework.zip",
            checksum: "79ad831efadff3006e75a2d25ccb152c50abebea2b16802e5b28c0bc6c810f5b")
    ]
)
