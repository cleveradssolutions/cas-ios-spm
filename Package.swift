// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// Integration of some SDKs (e.g. IronSource, UnityAds) is not done through ready-made SPM packages,
// but using .zip archives from official GitHub repositories.
// Below are the links to the sources used to configure binaryTarget:
//
// - IronSource:
// The SDK archive was taken from the official repository:
// https://github.com/ironsource-mobile/iOS-sdk/tree/master/8.8.0
// Archive: IronSource8.8.0.zip
//
// - UnityAds:
// The SDK archive was taken from the official GitHub Releases:
// https://github.com/Unity-Technologies/unity-ads-ios/releases
// Specific release: https://github.com/Unity-Technologies/unity-ads-ios/releases/tag/4.14.2
// Archive: UnityAds.zip
//
// These archives were downloaded and used in `binaryTarget` as allowed by Swift Package Manager.
//

let package = Package(
    name: "CleverAdsSolutions",
    
    platforms: [.iOS(.v13)],
    
    products: [
        .library(
            name: "CleverAdsSolutionsSPM",
            targets: ["CASBaseResources"]
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
            name: "CASMediationAudienceNetwork",
            targets: ["CASMediationAudienceNetworkTarget"]
        ),
        .library(
            name: "CASMediationInMobi",
            targets: ["CASMediationInMobiTarget"]
        ),
        .library(
            name: "CASMediationDTExchange",
            targets: ["CASMediationDTExchangeTarget"]
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
            name: "CASMediationExchange",
            targets: ["CASMediationExchangeTarget"]
        ),
        .library(
            name: "CASMediationCrossPromo",
            targets: ["CASPromoResources"]
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
            name: "IronSourceSPMTarget",
            dependencies: [
                .target(name: "IronSourceSPM")
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
                .target(name: "IronSourceSPMTarget"),
                .target(name: "CASMediationIronSource"),
                .target(name: "CASBaseResources")
            ]
        ),
        
        .target(
            name: "UnityAdsSPMTarget",
            dependencies: [
                .target(name: "UnityAdsSPM")
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
                .linkedFramework("SystemConfiguration")
            ]
        ),
        .target(
            name: "CASMediationUnityAdsTarget",
            dependencies: [
                .target(name: "UnityAdsSPMTarget"),
                .target(name: "CASMediationUnityAds"),
                .target(name: "CASBaseResources")
            ]
        ),
                
        .target(
            name: "FBAudienceNetworkSPMTarget",
            dependencies: [
                .target(name: "FBAudienceNetworkSPM")
            ],
            linkerSettings: [
                .linkedFramework("AdSupport"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreImage"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("Foundation"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("StoreKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit"),
                .linkedFramework("WebKit"),
                .linkedLibrary("c++"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z")
            ]
        ),
        .target(
            name: "CASMediationAudienceNetworkTarget",
            dependencies: [
                .target(name: "CASMediationAudienceNetwork"),
                .target(name: "FBAudienceNetworkSPMTarget"),
                .target(name: "CASBaseResources"),
            ]
        ),
        .target(
            name: "InMobiSPMTarget",
            dependencies: [
                .target(name: "InMobiSPM")
            ]
        ),
        .target(
            name: "CASMediationInMobiTarget",
            dependencies: [
                .target(name: "CASMediationInMobi"),
                .target(name: "InMobiSPMTarget"),
                .target(name: "CASBaseResources"),
            ],
            linkerSettings: [
                .linkedFramework("WebKit"),
                .linkedLibrary("sqlite3.0")
            ]
        ),
        .target(
            name: "DTExchangeSPMTarget",
            dependencies: [
                .target(name: "DTExchangeSPM")
            ]
        ),
        .target(
            name: "CASMediationDTExchangeTarget",
            dependencies: [
                .target(name: "DTExchangeSPMTarget"),
                .target(name: "CASMediationDTExchange"),
                .target(name: "CASBaseResources"),
            ]
        ),
        
        .target(
            name: "CASMediationAppLovinTarget",
            dependencies: [
                .target(name: "CASMediationAppLovin"),
                .target(name: "CASBaseResources"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ]
        ),
        .target(
            name: "CASMediationGoogleAdsTarget",
            dependencies: [
                .target(name: "CASMediationGoogleAds"),
                .target(name: "CASBaseResources"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ]
        ),
        .target(
            name: "CASMediationVungleTarget",
            dependencies: [
                .target(name: "CASMediationVungle"),
                .target(name: "CASBaseResources"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager")
            ]
        ),
        
        .target(
            name: "CASMediationStartIOTarget",
            dependencies: [
                .target(name: "CASMediationStartIO"),
                .target(name: "CASBaseResources"),
                .product(name: "StartApp", package: "StartAppSDK-SwiftPackage")
            ]
        ),
        .target(
            name: "CASMediationMintegralTarget",
            dependencies: [
                .target(name: "CASMediationMintegral"),
                .target(name: "CASBaseResources"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package")
            ]
        ),
    
        .target(
            name: "CASMediationExchangeTarget",
            dependencies: [
                .target(name: "CASMediationExchange"),
                .target(name: "CASBaseResources")
            ],
            linkerSettings: [
                .linkedFramework("SafariServices"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("QuartzCore")
            ]
        ),
        
        .target(
            name: "CASBaseResources",
            dependencies: [
                .target(name: "CleverAdsSolutionsSPM"),
            ],
            resources: [
                .process("Resources")
            ],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("Foundation"),
                .linkedFramework("Network"),
                .linkedFramework("SwiftUI"),
                .linkedFramework("UIKit"),
                .linkedFramework("WebKit")
            ]
        ),
        .target(
            name: "CASPromoResources",
            dependencies: [
                .target(name: "CASMediationCrossPromo"),
                .target(name: "CASBaseResources")
            ],
            resources: [
                .process("Resources")
            ]
        ),
        
                        
        .binaryTarget(
            name: "CleverAdsSolutionsSPM",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.3.9/CleverAdsSolutions-4.0.2.1.zip",
            checksum: "1b8dd73cda9d35b04b411847d969f5c3b6d45561978f2dd0964655d52dc9e7dc"
        ),
                
        .binaryTarget(
            name: "IronSourceSPM",
            url: "https://github.com/ironsource-mobile/iOS-sdk/raw/master/8.8.0/IronSource8.8.0.zip",
            checksum: "e278dded76ed9cb23bc0b51ffce134dd5dc75572e84deeeeae053f07fe77d806"
        ),
        .binaryTarget(
            name: "CASMediationIronSource",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.3.9/CASMediationIronSource-8.8.0.0.zip",
            checksum: "e2d7d59ad24441b2ebe870a97eccea6497336637adc68ec17e785d829bcbe62a"
        ),
        
        .binaryTarget(
            name: "UnityAdsSPM",
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.14.2/UnityAds.zip",
            checksum: "4e695f438393edd8c7fb8af3f14dcdfa21ce5c52259c7d37696129db7000493f"
        ),
        .binaryTarget(
            name: "CASMediationUnityAds",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.3.9/CASMediationUnityAds-4.14.2.0.zip",
            checksum: "65dc10aafd25fee41ac7160cffec648ab5a7f9e89aeaa73b00b3961fe10c188a"
        ),
        .binaryTarget(
            name: "FBAudienceNetworkSPM",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.3.9/FBAudienceNetwork-6.17.1.d.zip",
            checksum: "3bde7dc864c8a6598e2bcb686d25584444178f4d0c33f1bf26620fddf573fe80"
        ),
        .binaryTarget(
            name: "CASMediationAudienceNetwork",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.3.9/CASMediationAudienceNetwork-6.17.1.0.zip",
            checksum: "e0b447e6c4c5c993118f474f99346607ccb3d7011d324b818d5f9bc189019720"
        ),
        .binaryTarget(
            name: "InMobiSPM",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.3.9/InMobi-iOS-SDK-10.8.3.zip",
            checksum: "faeeb442837927a744951511db9f5a554032e47a12a235fd8368c84496db6cf6"
        ),
        .binaryTarget(
            name: "CASMediationInMobi",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.3.9/CASMediationInMobi-10.8.2.0.zip",
            checksum: "36e64115da94fd479160743a65c6470b1c41fec03e1874b95df2f637bae3304e"
        ),
        
        .binaryTarget(
            name: "DTExchangeSPM",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.3.9/IASDKCore-8.3.7.zip",
            checksum: "05515b616c883d23a7145b2da28e0ff377310cc74f690fcc0ed90c693cda807a"
        ),
        .binaryTarget(
            name: "CASMediationDTExchange",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.3.9/CASMediationDTExchange-8.3.6.0.zip",
            checksum: "ac2d3cb1ffbefef6078441260cf216ad7d2b8d4af959a0abd2bb7fc369c083f0"
        ),
        
        .binaryTarget(
            name: "CASMediationAppLovin",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.3.9/CASMediationAppLovin-13.2.0.0.zip",
            checksum: "28f5451630c120eaf6e2d10d87924b17f9317dcd20f0a858102570f904c83414"
        ),
        .binaryTarget(
            name: "CASMediationGoogleAds",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.3.9/CASMediationGoogleAds-12.3.0.0.zip",
            checksum: "e8bee8ef3294f6eb691efa74ff0c2e8911dd00ea18d65c928967f1dac89a4073"
        ),
        .binaryTarget(
            name: "CASMediationVungle",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.3.9/CASMediationLiftoffMonetize-7.5.0.0.zip",
            checksum: "9d73620b7f37a5e4aba51feb5366fdaa0713c3178f6e3f43740cdd7f53734f02"
        ),
        
        .binaryTarget(
            name: "CASMediationStartIO",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.3.9/CASMediationStartIO-4.10.5.0.zip",
            checksum: "65b8b61967b31f911c0378f9dde1a9950380ada2e744016499ede8810fd519b5"
        ),
        .binaryTarget(
            name: "CASMediationMintegral",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.3.9/CASMediationMintegral-7.7.7.0.zip",
            checksum: "f77a5b71727563cdfb2f58c061b9b272840e128cfc376c93aabc4cd6b206fa40"
        ),
     
        .binaryTarget(
            name: "CASMediationExchange",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.3.9/CASMediationExchange-4.0.2.0.zip",
            checksum: "b8870a26bc4e6884872039c3d4e1b8258a2739330078c8d28c1806c3293a3e1a"
        ),
        .binaryTarget(
            name: "CASMediationCrossPromo",
            url: "https://github.com/shumakovd/spm-test/releases/download/v1.3.9/CASMediationCrossPromo-4.0.2.0.zip",
            checksum: "a35bf1503a571a67bcb70d093a923535b29c3afedf7de605540ead09b6164913"
        )
    ]
)
