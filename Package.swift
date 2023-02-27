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
            url: "https://github.com/SighticAnalytics/sightic-sdk-ios/releases/download/1.0.0-beta.2/SighticAnalytics.xcframework.zip",
            checksum: "9bac3afa820145f9fa3cda28e8b3bc1c14051626144f6c46e93458ff76d2a1d2")
    ]
)
