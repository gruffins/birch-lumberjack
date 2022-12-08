// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "BirchLumberjack",
    products: [
        .library(
            name: "BirchLumberjack",
            targets: ["BirchLumberjack"]),
    ],
    dependencies: [
        .package(url: "https://github.com/gruffins/birch-ios.git", from: "1.1.1"),
    ],
    targets: [
        .target(
            name: "BirchLumberjack",
            dependencies: ["Birch"]),
    ]
)
