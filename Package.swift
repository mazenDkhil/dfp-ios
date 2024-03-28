// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "DeviceFingerprint",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "DeviceFingerprint",
            targets: ["DeviceFingerprint"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/fingerprintjs/fingerprintjs-pro-ios", from: "2.3.2")
    ],
    targets: [
        .target(
            name: "DeviceFingerprint",
            dependencies: [
                .product(name: "FingerprintPro", package: "fingerprintjs-pro-ios"),
            ]
        ),
        .testTarget(
            name: "DeviceFingerprintTests",
            dependencies: ["DeviceFingerprint"]
        ),
    ]
)
