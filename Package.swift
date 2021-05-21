// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Pumaweb",
    products: [
        .executable(
            name: "Pumaweb",
            targets: ["Pumaweb"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.6.0")
    ],
    targets: [
        .target(
            name: "Pumaweb",
            dependencies: ["Publish"]
        )
    ]
)