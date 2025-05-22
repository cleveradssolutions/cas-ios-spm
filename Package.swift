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
            name: "CASMediationIronSource",
            targets: ["CASMediationIronSourceTarget"]
        ),
        .library(
            name: "CASMediationUnityAds",
            targets: ["CASMediationUnityAdsTarget"]
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
//        .library(
//            name: "CASMediationYandexAds",
//            targets: ["CASMediationYandexAdsTarget"]
//        ),
       
        .library(
            name: "CASMediationStartIO",
            targets: ["CASMediationStartIOTarget"]
        ),
        .library(
            name: "CASMediationMintegral",
            targets: ["CASMediationMintegralTarget"]
        ),
        
        .library(
            name: "CASMediationExchange",
            targets: ["CASMediationExchangeTarget"]
        ),
        .library(
            name: "CASMediationCrossPromo",
            targets: ["CASMediationCrossPromoTarget"]
        )
    ],
    
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package", exact: "13.2.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager", exact: "7.4.5"),
        // .package(url: "https://github.com/yandexmobile/yandex-ads-sdk-ios", exact: "7.12.3"),
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
            name: "CASMediationIronSourceTarget",
            dependencies: [
                .target(name: "IronSourceTarget"),
                .target(name: "CASMediationIronSource"),
                .target(name: "CleverAdsSolutionsTarget")
            ]
        ),
        
        .target(
            name: "UnityAdsTarget",
            dependencies: [
                .target(name: "UnityAds")
            ],
            linkerSettings: [
                .linkedFramework("AdSupport"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("UIKit"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("WebKit"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("Foundation"),
                .linkedFramework("MobileCoreServices"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("Network"),
                .linkedFramework("StoreKit"),
                .linkedFramework("AVFAudio"),
                .linkedFramework("SystemConfiguration"),
            ]
        ),
        .target(
            name: "CASMediationUnityAdsTarget",
            dependencies: [
                .target(name: "UnityAdsTarget"),
                .target(name: "CASMediationUnityAds"),
                .target(name: "CleverAdsSolutionsTarget")
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
//        .target(
//            name: "CASMediationYandexAdsTarget",
//            dependencies: [
//                .target(name: "CASMediationYandexAds"),
//                .target(name: "CleverAdsSolutionsTarget"),
//                .product(name: "YandexAdsSDK", package: "yandex-ads-sdk-ios")
//            ]
//        ),
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
            name: "CASMediationExchangeTarget",
            dependencies: [
                .target(name: "CASMediationExchange"),
                .target(name: "CleverAdsSolutionsTarget")
            ]
        ),
        .target(
            name: "CASMediationCrossPromoTarget",
            dependencies: [
                .target(name: "CASMediationCrossPromo"),
                .target(name: "CleverAdsSolutionsTarget")
            ],
            resources: [
                .process("Resources")
            ]
        ),
        
                        
        .binaryTarget(
            name: "CleverAdsSolutions",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.9/CleverAdsSolutions.zip",
            checksum: "45cb01addfc7a7560752ff05c867599daa9d25635f508cc770fbed4145587687"
        ),
                
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/ironsource-mobile/iOS-sdk/raw/master/8.8.0/IronSource8.8.0.zip",
            checksum: "e278dded76ed9cb23bc0b51ffce134dd5dc75572e84deeeeae053f07fe77d806"
        ),
        .binaryTarget(
            name: "CASMediationIronSource",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.7/CASMediationIronSource-8.8.0.0.zip",
            checksum: "878a9692572ea7930174454f9b32058fbb50480fc28a66190cac1a7d4affec4c"
        ),
        
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.14.2/UnityAds.zip",
            checksum: "4e695f438393edd8c7fb8af3f14dcdfa21ce5c52259c7d37696129db7000493f"
        ),
        .binaryTarget(
            name: "CASMediationUnityAds",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.7/CASMediationUnityAds-4.14.2.0.zip",
            checksum: "b38bf41f616b2a504080821ad7433525aa6a5b79c0981504c032c70521a9d494"
        ),
        
        
        .binaryTarget(
            name: "CASMediationAppLovin",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.7/CASMediationAppLovin-13.2.0.0.zip",
            checksum: "408c9335aca008c86ce432eae976604881974f2505e718061b2f69912c3b0a76"
        ),
        .binaryTarget(
            name: "CASMediationGoogleAds",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.7/CASMediationGoogleAds-12.3.0.0.zip",
            checksum: "8839f83411ae8ab87fbdf4a699f6873a28b0b42ed502a9675baab42e13c547a2"
        ),
        .binaryTarget(
            name: "CASMediationVungle",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.7/CASMediationLiftoffMonetize-7.5.0.0.zip",
            checksum: "cdba86a2c6087dcba164c3099d0e0b88768c97c4d9722ed7acfada97cff31c1c"
        ),
//        .binaryTarget(
//            name: "CASMediationYandexAds",
//            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.7/CASMediationYandexAds-7.12.1.0.zip",
//            checksum: "464ef13b09feb5accd5db99016982cd351e5b05a3276b4bf35b01806548fe4a9"
//        ),
        
        .binaryTarget(
            name: "CASMediationStartIO",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.7/CASMediationStartIO-4.10.5.0.zip",
            checksum: "0df6facd8e55a3c35e19b3e4235fee0b4a8ec201b15d7a721ef83d408ec11065"
        ),
        .binaryTarget(
            name: "CASMediationMintegral",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.7/CASMediationMintegral-7.7.7.0.zip",
            checksum: "d99a57fba1ea0753fe8f272cedfe11f32c297875429fdbf6de07e7d81dabf294"
        ),
        
        .binaryTarget(
            name: "CASMediationExchange",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.7/CASMediationExchange-4.0.2.0.zip",
            checksum: "cceaac922a8945850888c5e4f605a0a319cb06c95f7a8d20fec1cd1dddffa102"
        ),
        .binaryTarget(
            name: "CASMediationCrossPromo",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.2.9/CASMediationCrossPromo-4.0.2.0.zip",
            checksum: "ef240e2b2110d5673a7c0984d581661670da9dd8c35ac4777d4f515ba65ed576"
        )
    ]
)
