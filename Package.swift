// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "ZTBalistonKit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ZTBalistonKit",
            targets: ["ZTBalistonKitSDK"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/zhortech/ztcorekit-ios-sdk.git", from: "2.0.45")
    ],
    targets: [
        .target(
            name: "ZTBalistonKitSDK",
            dependencies: [
                .product(name: "ZTCoreKit", package: "ztcorekit-ios-sdk"),
            .target(
                name: "ZTBalistonKit"
            )
            ],
            path: "Sources/ZTBalistonKitSDK"
        ),
        .binaryTarget(
            name: "ZTBalistonKit",
            path: "Sources/ZTBalistonKit.xcframework"
        )
    ],
    swiftLanguageVersions: [.v5]
)
