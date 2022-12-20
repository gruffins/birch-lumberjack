// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "BirchLumberjack",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "BirchLumberjack",
            targets: ["BirchLumberjack"]),
    ],
    dependencies: [
        .package(url: "https://github.com/gruffins/birch-ios.git", .upToNextMajor(from: "1.2.1")),
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", .upToNextMajor(from: "3.0.0"))
    ],
    targets: [
        .target(
            name: "BirchLumberjack",
            dependencies: [
                .product(name: "Birch", package: "birch-ios"),
                .product(name: "CocoaLumberjack", package: "CocoaLumberjack")
            ]
        )
    ]
)