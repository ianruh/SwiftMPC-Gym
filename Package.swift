// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftMPC-Gym",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "git@github.com:ianruh/SwiftMPC.git", .branch("ltv-mpc")),
        .package(url: "https://github.com/pvieito/PythonKit.git", .branch("master")),
        .package(url: "https://github.com/apple/swift-numerics.git", from: "0.0.8"),
        .package(url: "https://github.com/ianruh/LASwift.git", .branch("linux")),
        .package(url: "https://github.com/apple/swift-collections.git", from: "0.0.1"),
        .package(url: "https://github.com/apple/swift-argument-parser", .upToNextMinor(from: "0.4.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CartPole",
            dependencies: [
                "PythonKit",
                "SwiftMPC",
                .product(name: "RealModule", package: "swift-numerics"),
                "LASwift",
                .product(name: "Collections", package: "swift-collections"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ])
    ]
)
