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
            name: "CASMediationStartIO",
            targets: ["CASMediationStartIOTarget"]
        ),
        .library(
            name: "CASMediationMintegral",
            targets: ["CASMediationMintegralTarget"]
        ),
        .library(
            name: "CASMediationIronSource",
            targets: ["CASMediationIronSourceTarget"]
        )
    ],
    
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package", exact: "13.2.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager", exact: "7.4.5"),
        .package(url: "https://github.com/StartApp-SDK/StartAppSDK-SwiftPackage", exact: "4.10.5"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "12.3.0"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package", exact: "7.7.7")
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
            name: "IronSourceTarget",
            dependencies: [
                .target(name: "IronSource")
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

        
        .target(
            name: "CASMediationAppLovinTarget",
            dependencies: [
                .target(name: "CASMediationAppLovin"),
                .target(name: "CleverAdsSolutionsTarget"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ]
        ),
        .target(
            name: "CASMediationGoogleAdsTarget",
            dependencies: [
                .target(name: "CASMediationGoogleAds"),
                .target(name: "CleverAdsSolutionsTarget"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ]
        ),
        .target(
            name: "CASMediationVungleTarget",
            dependencies: [
                .target(name: "CASMediationVungle"),
                .target(name: "CleverAdsSolutionsTarget"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager")
            ]
        ),
        .target(
            name: "CASMediationStartIOTarget",
            dependencies: [
                .target(name: "CASMediationStartIO"),
                .target(name: "CleverAdsSolutionsTarget"),
                .product(name: "StartApp", package: "StartAppSDK-SwiftPackage")
            ]
        ),
        .target(
            name: "CASMediationMintegralTarget",
            dependencies: [
                .target(name: "CASMediationMintegral"),
                .target(name: "CleverAdsSolutionsTarget"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package")
            ]
        ),
        .target(
            name: "CASMediationIronSourceTarget",
            dependencies: [
                .target(name: "IronSourceTarget"),
                .target(name: "CASMediationIronSource"),
                .target(name: "CleverAdsSolutionsTarget")
            ]
        ),
              
        .binaryTarget(
            name: "CleverAdsSolutions",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.8/CleverAdsSolutions.zip",
            checksum: "8c899e1e3d24a4c7afda579f579e6f366cc672ee66faa803a442bfa15e60a725"
        ),
        .binaryTarget(
            name: "CASMediationAppLovin",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.6/CASMediationAppLovin-13.2.0.0.zip",
            checksum: "d663bb14f30de234f63bc664fd3a167d79cfd2cda20f07158a557e87e6df88b5"
        ),
        .binaryTarget(
            name: "CASMediationGoogleAds",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.6/CASMediationGoogleAds-12.3.0.0.zip",
            checksum: "2a14f5a2c62675a377f29fa06d5d7cc69fe61ded16ec8b3d36ffeea2442e85c4"
        ),
        .binaryTarget(
            name: "CASMediationVungle",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.6/CASMediationLiftoffMonetize-7.5.0.0.zip",
            checksum: "f1b614fa3ad85a5a4b9efb3f0fe57663ac3d4e4791af93db5b8ebeb616dd8bab"
        ),
        .binaryTarget(
            name: "CASMediationStartIO",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.6/CASMediationStartIO-4.10.5.0.zip",
            checksum: "3ebafe9513f56c00bed55a1e6ced6811b9ec582c1d95358dfd272b236a4693bf"
        ),
        .binaryTarget(
            name: "CASMediationMintegral",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.6/CASMediationMintegral-7.7.7.0.zip",
            checksum: "c872148e19777475a0260d8dedfc3d2360878ab3f8235b871b571d4cb57054b7"
        ),
        .binaryTarget(
            name: "CASMediationIronSource",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.6/CASMediationIronSource-8.8.0.0.zip",
            checksum: "8f5490557aa4abae76a3afad74072f7cfa010f28ac26e827ab3564243886c9bc"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/ironsource-mobile/iOS-sdk/raw/master/8.8.0/IronSource8.8.0.zip",
            checksum: "e278dded76ed9cb23bc0b51ffce134dd5dc75572e84deeeeae053f07fe77d806"
        )
    ]
)
