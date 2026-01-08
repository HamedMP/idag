// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "macos-cal",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "cal", targets: ["macos-cal"])
    ],
    targets: [
        .executableTarget(
            name: "macos-cal"
        )
    ]
)
