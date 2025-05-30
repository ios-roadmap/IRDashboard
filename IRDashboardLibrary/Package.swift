// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IRDashboardLibrary",
    defaultLocalization: "en",
    platforms: [.iOS(.v18)],
    products: [
        .library(
            name: "IRDashboardLibrary",
            targets: ["IRDashboardLibrary"]),
    ],
    dependencies: [
        .package(name: "IRProfile", path: "../../../Features/IRProfile"),
        .package(name: "IRSettings", path: "../../../Features/IRSettings"),
        
        .package(name: "IRStyleKit", path: "../../../Packages/IRStyleKit"),
    ],
    targets: [
        .target(
            name: "IRDashboardLibrary",
            dependencies: [
                "IRProfile",
                "IRSettings",
                
                "IRStyleKit",
            ]
        ),

    ]
)
