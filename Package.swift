// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ScorebookIOSLibraries",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ScorebookIOSLibraries",
            targets: ["ScorebookIOSLibraries"]),
        .library(name: "SVProgressHUD",
                 targets: ["SVProgressHUD"]),
        .library(name: "ScorebookFoundation",
                 targets: ["ScorebookFoundation"]),
        .library(name: "SpreadsheetView",
                 targets: ["SpreadsheetView"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ScorebookIOSLibraries",
            dependencies: []),
        .testTarget(
            name: "ScorebookIOSLibrariesTests",
            dependencies: ["ScorebookIOSLibraries"]),
        .binaryTarget(name: "SVProgressHUD",
                      path: "SVProgressHUD.xcframework"),
        .binaryTarget(name: "ScorebookFoundation",
                      path: "ScorebookFoundation.xcframework"),
        .binaryTarget(name: "SpreadsheetView",
                      path: "SpreadsheetView.xcframework")
    ]
)
