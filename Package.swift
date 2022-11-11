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
            url: "https://github.com/EyescannerTechnology/sightic-sdk-ios/releases/download/0.0.50/SighticAnalytics.xcframework.zip",
            checksum: "62c75817656a055385aa316c90468eb79df53f95ea46a44af05a126df8b9293e")
    ]
)     
