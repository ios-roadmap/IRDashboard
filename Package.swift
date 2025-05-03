// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// Package.swift (local package)
let package = Package(
    name: "IRDashboard",
    platforms: [.iOS(.v18)],
    products: [
        // The product name *must* match the name you `import`
        .library(
            name: "IRDashboard",
            targets: ["IRDashboard"]
        ),
    ],
    targets: [
        // Make sure this path really contains DashboardView.swift
        .target(
            name: "IRDashboard",
            dependencies: [],
            path: "IRDashboard"          // or omit and keep the default Sources/IRDashboard
        )
    ]
)

