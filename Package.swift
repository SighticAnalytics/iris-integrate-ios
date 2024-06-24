// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IRISintegrate",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "IRISintegrate", targets: ["IRISintegrate"]),
    ],
    targets: [
        .binaryTarget(name: "IRISintegrate", url: "https://github.com/SighticAnalytics/iris-integrate-ios/releases/download/2.1.0/IRISintegrate.xcframework.zip", checksum: "81100a564cc1451340db63cf29c022a2f5d0f9fcb9edf6928703ae78fa1e64be"),
    ]
)
