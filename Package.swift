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
//        .library(
//            name: "CASMediationVungle",
//            targets: ["CASMediationVungleTarget"]
//        ),
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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package", from: "13.2.0"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", from: "12.3.0"),
        // .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager", from: "7.4.5"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package", from: "7.7.7")
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
//        .target(
//            name: "CASMediationVungleTarget",
//            dependencies: [
//                .target(name: "CleverAdsSolutionsTarget"),
//                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager")
//            ]
//        ),
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
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.3/CleverAdsSolutionsBase.zip",
            checksum: "8494d1a14b49452b45910f3b04f6fd861305ca4bbd825b56646147afab8e912e"

        ),
        .binaryTarget(
            name: "CASMediationAppLovin",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.3/CASMediationAppLovin-13.2.0.0.zip",
            checksum: "a0e9c061ed7d0b211787b3760d7c987560860498ea29df2eb4a3e88d3999c3f4"
        ),
        .binaryTarget(
            name: "CASMediationGoogleAds",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.3/CASMediationGoogleAds-12.3.0.0.zip",
            checksum: "28e296c25dd8b8fec851f6d1900ecdd12950a996762ef0f398254a8cb29f9c43"
        ),
//        .binaryTarget(
//            name: "CASMediationVungle",
//            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.3/CASMediationLiftoffMonetize-7.5.0.0.zip",
//            checksum: "4c47aea4b4a6f851fa6cc1e80f7e1e99c9601369b7d0285be5360da2575e9325"
//        ),
        .binaryTarget(
            name: "CASMediationMintegral",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.3/CASMediationMintegral-7.7.7.0.zip",
            checksum: "d5c4f8cee3a18b7cb5cd97681606bb4de65ae6886e471f416cd1a1d02fde01ff"
        ),
        
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/ironsource-mobile/iOS-sdk/raw/master/8.8.0/IronSource8.8.0.zip",
            checksum: "e278dded76ed9cb23bc0b51ffce134dd5dc75572e84deeeeae053f07fe77d806"
        ),
        .binaryTarget(
            name: "CASMediationIronSource",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.3/CASMediationIronSource-8.8.0.0.zip",
            checksum: "b6f10aa412de7ab46c8ff563fa3f22eb6f40e8212721e51afdfdb29a96cd8b27"
        )
    ]
)
