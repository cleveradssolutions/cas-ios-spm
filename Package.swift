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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package", exact: "13.2.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager", exact: "7.4.5"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "12.3.0"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package", exact: "7.7.7")
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
        .target(
            name: "CASMediationIronSourceTarget",
            dependencies: [
                .target(name: "IronSourceTarget"),
                .target(name: "CASMediationIronSource"),
                .target(name: "CleverAdsSolutionsTarget")
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
        
        .binaryTarget(
            name: "CleverAdsSolutions",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.0.8/CleverAdsSolutions.zip",
            checksum: "8c899e1e3d24a4c7afda579f579e6f366cc672ee66faa803a442bfa15e60a725"
        ),
        .binaryTarget(
            name: "CASMediationAppLovin",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.4/CASMediationAppLovin-13.2.0.0.zip",
            checksum: "fc7731284992c2ffc8c5266896d81c531f0e2a3161d3a60fa23a015be5ce6a21"
        ),
        .binaryTarget(
            name: "CASMediationGoogleAds",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.4/CASMediationGoogleAds-12.3.0.0.zip",
            checksum: "2f6c47e8bbb6bd546f924b5a3e8096a073185d1ef72f64a72e848f6cca23a019"
        ),
        .binaryTarget(
            name: "CASMediationVungle",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.4/CASMediationLiftoffMonetize-7.5.0.0.zip",
            checksum: "e31bd3e86685ab9ba825abce73498132ee60ec872566d644e05ae33b4b5bc36b"
        ),
        .binaryTarget(
            name: "CASMediationMintegral",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.4/CASMediationMintegral-7.7.7.0.zip",
            checksum: "37ef7fa62aad7b324b2318deb063deed786f0436272d3acbd7e1397226f4d535"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/ironsource-mobile/iOS-sdk/raw/master/8.8.0/IronSource8.8.0.zip",
            checksum: "e278dded76ed9cb23bc0b51ffce134dd5dc75572e84deeeeae053f07fe77d806"
        ),
        .binaryTarget(
            name: "CASMediationIronSource",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.4/CASMediationIronSource-8.8.0.0.zip",
            checksum: "10386758f451621f5ffa5c525f24bd0071d4c35dba8d028dd71bec1b74def5a4"
        )
    ]
)
