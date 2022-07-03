// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Cancer200Api",
    platforms: [
        ..iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Cancer200Api",
            targets: ["Cancer200Api"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "Cancer200Api",
         url: "https://github.com]/andrewmapimagery/Cancer200Api.git/Cancer200Api.xcframework.zip",
         checksum: "e7f75cb009eb4a1b8c56a1268b034f2c89863f6a80de6dd9254c1aaa768991e4"),
    ]
)
