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
//        .library(
//            name: "CASMediationAppLovin",
//            targets: ["CASMediationAppLovinTarget"]
//        ),
        .library(
            name: "CASMediationGoogleAds",
            targets: ["CASMediationGoogleAdsTarget"]
        ),
//        .library(
//            name: "CASMediationVungle",
//            targets: ["CASMediationVungleTarget"]
//        ),
//        .library(
//            name: "CASMediationMintegral",
//            targets: ["CASMediationMintegralTarget"]
//        ),
//        .library(
//            name: "CASMediationIronSource",
//            targets: ["CASMediationIronSourceTarget"]
//        ),
//        .library(
//            name: "IronSource",
//            targets: ["IronSourceTarget"]
//        ),
    ],
    
    dependencies: [
        // .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package", exact: "13.2.0"),
        // .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager", exact: "7.4.5"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "12.3.0")
        // .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package", exact: "7.7.7")
    ],
    
    targets: [
        .target(
            name: "CleverAdsSolutionsTarget",
            dependencies: [
                .target(name: "CleverAdsSolutions")
            ],
            // resources: [
            //    .process("Resources")
            // ],
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
//        .target(
//            name: "CASMediationAppLovinTarget",
//            dependencies: [
//                .target(name: "CASMediationAppLovin"),
//                .target(name: "CleverAdsSolutionsTarget"),
//                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
//            ]
//        ),
        .target(
            name: "CASMediationGoogleAdsTarget",
            dependencies: [
                .target(name: "CASMediationGoogleAds"),
                .target(name: "CleverAdsSolutionsTarget"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ]
        ),
//        .target(
//            name: "CASMediationVungleTarget",
//            dependencies: [
//                .target(name: "CASMediationVungle"),
//                .target(name: "CleverAdsSolutionsTarget"),
//                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager")
//            ]
//        ),
//        .target(
//            name: "CASMediationMintegralTarget",
//            dependencies: [
//                .target(name: "CASMediationMintegral"),
//                .target(name: "CleverAdsSolutionsTarget"),
//                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package")
//            ]
//        ),
//        .target(
//            name: "CASMediationIronSourceTarget",
//            dependencies: [
//                .target(name: "IronSourceTarget"),
//                .target(name: "CASMediationIronSource"),
//                .target(name: "CleverAdsSolutionsTarget")
//            ]
//        ),
//        
//        .target(
//            name: "IronSourceTarget",
//            dependencies: [
//                .target(name: "IronSource")
//            ],
//            linkerSettings: [
//                .linkedFramework("AdSupport"),
//                .linkedFramework("AudioToolbox"),
//                .linkedFramework("AVFoundation"),
//                .linkedFramework("CFNetwork"),
//                .linkedFramework("CoreGraphics"),
//                .linkedFramework("CoreMedia"),
//                .linkedFramework("CoreTelephony"),
//                .linkedFramework("CoreVideo"),
//                .linkedFramework("Foundation"),
//                .linkedFramework("MobileCoreServices"),
//                .linkedFramework("QuartzCore"),
//                .linkedFramework("Security"),
//                .linkedFramework("StoreKit"),
//                .linkedFramework("SystemConfiguration"),
//                .linkedLibrary("z")
//            ]
//        ),
        
        .binaryTarget(
            name: "CleverAdsSolutions",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.8/CleverAdsSolutions.zip",
            checksum: "8c899e1e3d24a4c7afda579f579e6f366cc672ee66faa803a442bfa15e60a725"
        ),
//        .binaryTarget(
//            name: "CASMediationAppLovin",
//            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.9/CASMediationAppLovin-13.2.0.0.zip",
//            checksum: "a2980c464b938389d4c04a9ca8ecd5ec459aa3a00c7f7e1665d656f0d7177dd3"
//        ),
        .binaryTarget(
            name: "CASMediationGoogleAds",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.1.7/CASMediationGoogleAds-12.3.0.0.zip",
            checksum: "7aaf7deab159ca2cb8efbc8944cab8659ed7aba14aa518a60e74dce4586cdd55"
        ),
//        .binaryTarget(
//            name: "CASMediationVungle",
//            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.9/CASMediationLiftoffMonetize-7.4.5.0.zip",
//            checksum: "8f1d061eb05d1d34d0ff8289d9e9789788fddb6eb3f9843d42e7d485cccf099b"
//        ),
//        .binaryTarget(
//            name: "CASMediationMintegral",
//            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.9/CASMediationMintegral-7.7.7.0.zip",
//            checksum: "985ea32a106f930a97be4944b7bb3323731311cad9eb788b2517285d7ca4fbd2"
//        )
//        .binaryTarget(
//            name: "IronSource",
//            url: "https://github.com/ironsource-mobile/iOS-sdk/raw/master/8.8.0/IronSource8.8.0.zip",
//            checksum: "e278dded76ed9cb23bc0b51ffce134dd5dc75572e84deeeeae053f07fe77d806"
//        ),
//        .binaryTarget(
//            name: "CASMediationIronSource",
//            url: "",
//            checksum: ""
//        )
    ]
)
