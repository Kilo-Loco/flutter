// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Flutter",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "Flutter",
            targets: ["Flutter"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Flutter",
            dependencies: []),
        .testTarget(
            name: "FlutterTests",
            dependencies: ["Flutter"]),
    ]
)
