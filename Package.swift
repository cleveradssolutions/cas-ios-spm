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
                .target(name: "CASAppLovinAdapterWrapper"),
                .product(name: "CASAppLovinAdapter", package: "AppLovin-MAX-Swift-Package")
            ]
        ),
        .target(
            name: "CASGoogleAdsAdapterWrapper",
            dependencies: [
                .target(name: "CASWrapper"),
                .target(name: "CASGoogleAdsAdapterWrapper"),
                .product(name: "CASGoogleAdsAdapter", package: "swift-package-manager-google-mobile-ads")
            ]
        ),
        .target(
            name: "CASVungleAdapterWrapper",
            dependencies: [
                .target(name: "CASWrapper"),
                .target(name: "CASVungleAdapterWrapper"),
                .product(name: "CASVungleAdapter", package: "VungleAdsSDK-SwiftPackageManager")
            ]
        ),
        .target(
            name: "CASMintegralAdapterWrapper",
            dependencies: [
                .target(name: "CASWrapper"),
                .target(name: "CASMintegralWrapper"),
                .product(name: "CASMintegralAdapter", package: "MintegralAdSDK-Swift-Package")
            ]
        ),
        
        .binaryTarget(
            name: "CASAdapter",
            url: "https://github.com/cleveradssolutions/CAS-iOS/releases/download/4.0.1-rc5/CleverAdsSolutions.zip",
            checksum: "f42fbc92bfa5a718ab6dff0a42d332f39b277a0b8f3b416747cb5164bfa9337e"
        ),
        .binaryTarget(
            name: "CASAppLovinAdapter",
            url: "https://github.com/cleveradssolutions/CAS-iOS/releases/download/4.0.2/CASMediationAppLovin-13.2.0.0.zip",
            checksum: "1af2e851c6cade940065510ac438e3d889a417728af6533dbce22f814f7c9cff"
        ),
        .binaryTarget(
            name: "CASGoogleAdsAdapter",
            url: "https://github.com/cleveradssolutions/CAS-iOS/releases/download/4.0.2/CASMediationGoogleAds-12.3.0.0.zip",
            checksum: "cb4bf36730e0647d65f5b207a33dcb81fb09e25ac159ec4740fc8ac4f5d9ca49"
        ),
        .binaryTarget(
            name: "CASVungleAdapter",
            url: "https://github.com/cleveradssolutions/CAS-iOS/releases/download/4.0.2/CASMediationLiftoffMonetize-7.5.0.0.zip",
            checksum: "7f811e73e52d877c518314c31ad358d8a3e50eb6aed30c1c0bbdddf5abe0fcef"
        ),
        .binaryTarget(
            name: "CASMintegralAdapter",
            url: "https://github.com/cleveradssolutions/CAS-iOS/releases/download/4.0.2/CASMediationMintegral-7.7.7.0.zip",
            checksum: "0b31b7672c6ff45776f98270ff836a9f307028fb4b55b013ec7efd67dfd79c27"
        )
    ]
)
