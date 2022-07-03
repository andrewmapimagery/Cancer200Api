// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Cancer200Api",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "Cancer200Api",
            targets: ["Cancer200Api"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/pkluz/PKHUD.git", 
            from: "5.4.0"
        ),
        .package(
            url: "https://github.com/SnapKit/SnapKit.git", 
            from: "5.6.0"
        ),
        .package(
            url: "https://github.com/malcommac/SwiftLocation.git", 
            from: "5.1.0"
        )
    ],
    targets: [
        .binaryTarget(name: "Cancer200Api",
         path: "Binaries/Cancer200Api.xcframework")
    ]
)
