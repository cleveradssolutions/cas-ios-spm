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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package", from: "13.2.0"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", from: "12.3.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager", from: "7.4.5"),
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
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.3/CleverAdsSolutionsBase.zip",
            checksum: "8494d1a14b49452b45910f3b04f6fd861305ca4bbd825b56646147afab8e912e"

        ),
        .binaryTarget(
            name: "CASMediationAppLovin",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.4/CASMediationAppLovin-13.2.0.0.zip",
            checksum: "4305d22e2f1d8e27a0f9e1d1c4701f8a784a19d6173f9fa2b5e7b8e9d57696e6"
        ),
        .binaryTarget(
            name: "CASMediationGoogleAds",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.4/CASMediationGoogleAds-12.3.0.0.zip",
            checksum: "76a3af5835e627b0167f3ae42e6243c86c96c05a773d981e20da04ffeb1edfb8"
        ),
        .binaryTarget(
            name: "CASMediationVungle",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.4/CASMediationLiftoffMonetize-7.5.0.0.zip",
            checksum: "3ee33dde99e6750940d4479ff373af634eef31037096577441d94dcc1db27a6f"
        ),
        .binaryTarget(
            name: "CASMediationMintegral",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.4/CASMediationMintegral-7.7.7.0.zip",
            checksum: "54ae25fca22ca6936d5a47d3a09c1a60c5be32a03302de711fd5a4a87d22040c"
        ),
        
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/ironsource-mobile/iOS-sdk/raw/master/8.8.0/IronSource8.8.0.zip",
            checksum: "e278dded76ed9cb23bc0b51ffce134dd5dc75572e84deeeeae053f07fe77d806"
        ),
        .binaryTarget(
            name: "CASMediationIronSource",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.4/CASMediationIronSource-8.8.0.0.zip",
            checksum: "893efb180c7362391866efca930dba0932e44c6138cc05fcbe4b7e3a219e2736"
        )
    ]
)
