// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "idag",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "idag", targets: ["idag"])
    ],
    targets: [
        .executableTarget(
            name: "idag"
        )
    ]
)
