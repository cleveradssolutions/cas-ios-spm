// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CleverAdsSolutions",
    
    platforms: [.iOS(.v13)],
    
    products: [
        .library(
            name: "CleverAdsSolutions",
            targets: ["CleverAdsSolutionsTarget"]
        ),
        .library(
            name: "CASMediationAppLovin",
            targets: ["CASMediationAppLovinTarget"]
        ),
        .library(
            name: "CASMediationGoogleAds",
            targets: ["CASMediationGoogleAdsTarget"]
        ),
        .library(
            name: "CASMediationVungle",
            targets: ["CASMediationVungleTarget"]
        ),
        .library(
            name: "CASMediationMintegral",
            targets: ["CASMediationMintegralTarget"]
        ),
        .library(
            name: "CASMediationIronSource",
            targets: ["CASMediationIronSourceTarget"]
        ),
        .library(
            name: "IronSource",
            targets: ["IronSourceTarget"]
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
            name: "CleverAdsSolutionsTarget",
            dependencies: [
                .target(name: "CleverAdsSolutions")
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
            name: "CASMediationAppLovinTarget",
            dependencies: [
                .target(name: "CleverAdsSolutionsTarget"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ]
        ),
        .target(
            name: "CASMediationGoogleAdsTarget",
            dependencies: [
                .target(name: "CleverAdsSolutionsTarget"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ]
        ),
        .target(
            name: "CASMediationVungleTarget",
            dependencies: [
                .target(name: "CleverAdsSolutionsTarget"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager")
            ]
        ),
        .target(
            name: "CASMediationMintegralTarget",
            dependencies: [
                .target(name: "CleverAdsSolutionsTarget"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package")
            ]
        ),
        .target(
            name: "CASMediationIronSourceTarget",
            dependencies: [
                .target(name: "IronSourceTarget"),
                .target(name: "CleverAdsSolutionsTarget")
            ]
        ),
        
        .target(
            name: "IronSourceTarget",
            dependencies: [
                .target(name: "IronSource"),                
            ],
            linkerSettings: [
                .linkedFramework("AdSupport"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CFNetwork"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("Foundation"),
                .linkedFramework("MobileCoreServices"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("Security"),
                .linkedFramework("StoreKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedLibrary("z")
            ]
        ),
        
        .binaryTarget(
            name: "CleverAdsSolutions",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.1/CleverAdsSolutionsBase.zip",
            checksum: "9eef43a2021c44db6c70c31676d72c0744e3793148fd78031fcafbf549854c47"
        ),
        .binaryTarget(
            name: "CASMediationAppLovin",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.1/CASMediationAppLovin-13.2.0.0.zip",
            checksum: "da07b04c7efe838081d4c354994ad8cfbf11b3bea03163648f1aebae7c98f41f"
        ),
        .binaryTarget(
            name: "CASMediationGoogleAds",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.1/CASMediationGoogleAds-12.3.0.0.zip",
            checksum: "1a8618f5c2d2aba07c63a0b9c76178cf6111b27ac605f15b57a3d3981e1f6f87"
        ),
        .binaryTarget(
            name: "CASMediationVungle",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.1/CASMediationLiftoffMonetize-7.5.0.0.zip",
            checksum: "6ca0d55a81937e7a3e5ebae28c2f4ece695f6c799f352d2c54960776c976578b"
        ),
        .binaryTarget(
            name: "CASMediationMintegral",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.1/CASMediationMintegral-7.7.7.0.zip",
            checksum: "646a9eab663b0af855b50772613b952df5f1c74f6c91dbdfc0d8844e51d66cfc"
        ),
        
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/ironsource-mobile/iOS-sdk/raw/master/8.8.0/IronSource8.8.0.zip",
            checksum: "e278dded76ed9cb23bc0b51ffce134dd5dc75572e84deeeeae053f07fe77d806"
        ),
        .binaryTarget(
            name: "CASMediationIronSource",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.1/CASMediationIronSource-8.8.0.0.zip",
            checksum: "ef4f39bd52d879129a89ce78c74350cf0056391edb2cac698563ce7a84e47bd4"
        )
    ]
)
