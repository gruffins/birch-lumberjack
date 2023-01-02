// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "BirchLumberjack",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "BirchLumberjack",
            targets: ["BirchLumberjack"]),
    ],
    dependencies: [
        .package(url: "https://github.com/gruffins/birch-swift.git", .upToNextMajor(from: "1.4.0")),
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", .upToNextMajor(from: "3.0.0"))
    ],
    targets: [
        .target(
            name: "BirchLumberjack",
            dependencies: [
                .product(name: "Birch", package: "birch-swift"),
                .product(name: "CocoaLumberjack", package: "CocoaLumberjack")
            ]
        )
    ]
)