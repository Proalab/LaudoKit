// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LaudoKit",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LaudoKit",
            targets: ["LaudoKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Swinject/Swinject", .upToNextMajor(from: "2.8.4")),
        .package(url: "https://github.com/krzysztofzablocki/LifetimeTracker", .upToNextMajor(from: "1.8.2"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LaudoKit",
            dependencies: ["Swinject", "LifetimeTracker"]
        ),
        .testTarget(
            name: "LaudoKitTests",
            dependencies: ["LaudoKit"]),
    ]
)
