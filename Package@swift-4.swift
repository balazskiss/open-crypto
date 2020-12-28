// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "OpenCrypto",
    products: [
        .library(name: "OpenCrypto", targets: ["OpenCrypto"]),
    ],
    dependencies: [
        // Module for generating random bytes and numbers.
        .package(url: "https://github.com/vapor/random.git", .upToNextMajor(from: "1.2.0")),

        // LibreSSL / OpenSSL module map for Swift.
        .package(url: "https://github.com/vapor/ctls.git", .upToNextMajor(from: "1.1.0")),
    ],
    targets: [
        .target(name: "OpenCrypto", dependencies: ["CTLS", "Random"]),
    ]
)
