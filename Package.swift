// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "cas-ios-spm",
    
    platforms: [.iOS(.v14)],
    
    products: [
        .library(
            name: "CASAdapter",
            targets: ["CASWrapper"]
        ),
        .library(
            name: "CASAppLovinAdapter",
            targets: ["CASAppLovinAdapterWrapper"]
        ),
        .library(
            name: "CASGoogleAdsAdapter",
            targets: ["CASGoogleAdsAdapterWrapper"]
        ),
        .library(
            name: "CASVungleAdapter",
            targets: ["CASVungleAdapterWrapper"]
        ),
        .library(
            name: "CASMintegralAdapter",
            targets: ["CASMintegralAdapterWrapper"]
        ),
    ],
        
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package", from: "13.0.1"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", from: "11.12.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager", from: "7.5.0"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package", from: "7.7.3")
    ],
    
    targets: [
        .target(
            name: "CASWrapper",
            dependencies: [
                .target(name: "CASAdapter")
            ],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("AdSupport"),
                .linkedFramework("AppTrackingTransparency"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreImage"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreText"),
                .linkedFramework("Foundation"),
                .linkedFramework("Network"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("StoreKit"),
                .linkedFramework("SwiftUI"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit"),
                .linkedFramework("WebKit")
            ]
        ),
        .target(
            name: "CASAppLovinAdapterWrapper",
            dependencies: [
                .target(name: "CASWrapper"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ]
        ),
        .target(
            name: "CASGoogleAdsAdapterWrapper",
            dependencies: [
                .target(name: "CASWrapper"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ]
        ),
        .target(
            name: "CASVungleAdapterWrapper",
            dependencies: [
                .target(name: "CASWrapper"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager")
            ]
        ),
        .target(
            name: "CASMintegralAdapterWrapper",
            dependencies: [
                .target(name: "CASWrapper"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package")
            ]
        ),
        
        .binaryTarget(
            name: "CASAdapter",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.0/CleverAdsSolutionsBase.zip",
            checksum: "c8107d77e44652b436f5f3ab86ba5d610445994dd4b7eab0cc09b9a14e355c2b"
        ),
        .binaryTarget(
            name: "CASAppLovinAdapter",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.0/CASMediationAppLovin-13.2.0.0.zip",
            checksum: "43a299a44215908be55cf1f7e9d9f243b48b0da87a1ad3f49ce0c068f65ab4dd"
        ),
        .binaryTarget(
            name: "CASGoogleAdsAdapter",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.0/CASMediationGoogleAds-12.3.0.0.zip",
            checksum: "a84fc80ab3cfc7ebacc120ee901decccc0fa90b6d0036c4a4f1c1af3ed4a452b"
        ),
        .binaryTarget(
            name: "CASVungleAdapter",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.0/CASMediationLiftoffMonetize-7.5.0.0.zip",
            checksum: "5a985973b460e7ef70977ca9dca5f1fcbe607048de585597658a5788dcdc754e"
        ),
        .binaryTarget(
            name: "CASMintegralAdapter",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.0/CASMediationMintegral-7.7.7.0.zip",
            checksum: "3717de567f4ced2f9a93b5047da5fa4315ee3f90a3223d90d6836372cf30a3d0"
        )
    ]
)
