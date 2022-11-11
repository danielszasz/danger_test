// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.


import PackageDescription

let package = Package(
    name: "DangerTest",
    defaultLocalization: "en",
    products: [
        .library(name: "DangerDeps", type: .dynamic, targets: ["DangerTest"])
    ],
    dependencies: [
        .package(url: "https://github.com/danger/swift.git", from: "3.12.3")
    ],
    targets: [
        .target(
            name: "DangerTest",
            dependencies: [
                .product(name: "Danger", package: "swift")
            ],
            path: "Test",
            sources: ["DangerProxy.swift"]
        )
    ]
)
