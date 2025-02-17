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
        .binaryTarget(name: "IRISintegrate", url: "https://github.com/SighticAnalytics/iris-integrate-ios/releases/download/3.0.0/IRISintegrate.xcframework.zip", checksum: "0f5b88d760c026e56dd235a3c8eb18db529710ef60b0f587ce197e8cc8eee032"),
    ]
)
