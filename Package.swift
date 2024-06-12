// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ReadmeBuilder",
    platforms: [
        .macOS(.v14), .iOS(.v17), .tvOS(.v17)
    ],
    products: [
        .library(
            name: "ReadmeBuilder",
            targets: ["ReadmeBuilder"]),
    ],
    targets: [
        .target(
            name: "ReadmeBuilder"),
        .testTarget(
            name: "ReadmeBuilderTests",
            dependencies: ["ReadmeBuilder"]),
    ]
)
