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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package", exact: "13.2.0"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "12.3.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager", exact: "7.4.5"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package", exact: "7.7.7")
    ],
    
    targets: [
        .target(
            name: "CleverAdsSolutionsTarget",
            dependencies: [
                .target(name: "CleverAdsSolutions")
            ],
            resources: [
                .process("Resources")
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
            name: "CASMediationMintegralTarget",
            dependencies: [
                .target(name: "CASMediationMintegral"),
                .target(name: "CleverAdsSolutionsTarget"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package")
            ]
        ),
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
        .binaryTarget(
            name: "CASMediationAppLovin",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.8/CASMediationAppLovin-13.2.0.0.zip",
            checksum: "56972fc271ac16985d198b0819143a1c253d05610c40412ce1f167010061b45c"
        ),
        .binaryTarget(
            name: "CASMediationGoogleAds",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.8/CASMediationGoogleAds-12.3.0.0.zip",
            checksum: "385752e54bee02cc20247dd440388318bf2ea5392376822db9407f9b956d92a2"
        ),
        .binaryTarget(
            name: "CASMediationVungle",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.8/CASMediationLiftoffMonetize-7.5.0.0.zip",
            checksum: "dc90f740441ef527a13bbbba18c7af917d13d0fdacc5c66d1aa3f178975fcf76"
        ),
        .binaryTarget(
            name: "CASMediationMintegral",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.8/CASMediationMintegral-7.7.7.0.zip",
            checksum: "1f110d07ea85674b093e305404ebd7327e8a4535799337800b8fcf1ea71a3146"
        )
//        .binaryTarget(
//            name: "IronSource",
//            url: "https://github.com/ironsource-mobile/iOS-sdk/raw/master/8.8.0/IronSource8.8.0.zip",
//            checksum: "e278dded76ed9cb23bc0b51ffce134dd5dc75572e84deeeeae053f07fe77d806"
//        ),
//        .binaryTarget(
//            name: "CASMediationIronSource",
//            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.8/CASMediationIronSource-8.8.0.0.zip",
//            checksum: "50e62783014206431f2050a372952033971d82e5104b6c71bee736c13976891e"
//        )
    ]
)
