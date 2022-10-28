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
            url: "https://github.com/EyescannerTechnology/sightic-sdk-ios/releases/download/0.0.39/SighticAnalytics.xcframework.zip",
            checksum: "8d2f15dc4e2855c5608abdb547463209eef88be0e08d92f2b4501224276bdfcf")
    ]
)     
