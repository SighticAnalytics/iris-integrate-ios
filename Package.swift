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
            url: "https://github.com/EyescannerTechnology/sightic-sdk-ios/releases/download/1123/SighticAnalytics.xcframework.zip",
            checksum: "c20a22e3a811877960448f42887ca5f2530da2b0d4b5b6bfbb825e64cf1e7d1e")
    ]
)     
