// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ZTBalistonKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ZTBalistonKit",
            targets: ["ZTBalistonKitSDK"]
        )
    ],
    dependencies: [
        .package(
            name: "ZTCoreKit", 
            url: "https://github.com/zhortech/ztcorekit-ios-sdk.git", 
            .upToNextMajor(from: "1.1.84"))
    ],
    targets: [
        .target(
            name: "ZTBalistonKitSDK",
            dependencies: [
                .product(
                    name: "ZTCoreKit",
                    package: "ZTCoreKit"
                ),
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
