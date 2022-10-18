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
            url: "https://github.com/EyescannerTechnology/sightic-sdk-ios/releases/download/0.0.32/SighticAnalytics.xcframework.zip",
            checksum: "312183bf006c0b557e3ccd56a8c42d428deb12b2eee31d6afe95e1a10f496f4d")
    ]
)     
