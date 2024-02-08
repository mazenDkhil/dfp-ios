// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "DigitalFingerPrint",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "DigitalFingerPrint",
            targets: ["DigitalFingerPrint"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/fingerprintjs/fingerprintjs-pro-ios", from: "2.3.2")
    ],
    targets: [
        .target(
            name: "DigitalFingerPrint",
            dependencies: [
                .product(name: "FingerprintPro", package: "fingerprintjs-pro-ios"),
            ]
        ),
        .testTarget(
            name: "DigitalFingerPrintTests",
            dependencies: ["DigitalFingerPrint"]
        ),
    ]
)
