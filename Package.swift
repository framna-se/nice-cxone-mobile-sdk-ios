// swift-tools-version: 6.0
//
// Copyright (c) 2021-2026. NICE Ltd. All rights reserved.
//
// Licensed under the NICE License;
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    https://github.com/nice-devone/nice-cxone-mobile-sdk-ios/blob/main/LICENSE
//
// TO THE EXTENT PERMITTED BY APPLICABLE LAW, THE CXONE MOBILE SDK IS PROVIDED ON
// AN "AS IS" BASIS. NICE HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS
// OR IMPLIED, INCLUDING (WITHOUT LIMITATION) WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE, NON-INFRINGEMENT, AND TITLE.
//

import PackageDescription
import Foundation

let package = Package(
    name: "CXoneChatSDK",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "CXoneChatSDK",
            targets: ["CXoneChatSDK"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/BrandEmbassy/keychain-swift", from: "24.1.0"),
        .package(url: "https://github.com/framna-se/nice-cxone-mobile-guide-utility-ios.git", exact: "4.1.0-sj.1")
    ],
    targets: [
        .target(
            name: "CXoneChatSDK",
            dependencies: [
                .product(name: "KeychainSwift", package: "keychain-swift"),
                .product(name: "CXoneGuideUtility", package: "nice-cxone-mobile-guide-utility-ios")
            ],
            path: "Sources",
            resources: [
                .copy("../PrivacyInfo.xcprivacy")
            ]
        )
    ]
)
