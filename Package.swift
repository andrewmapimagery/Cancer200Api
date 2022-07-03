// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Cancer200Api",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Cancer200Api",
            targets: ["Cancer200Api"]),
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
         url: "https://github.com/andrewmapimagery/Cancer200Api/Cancer200Api.zip",
         checksum: "5fea79a480ea39de725e058ca547357fa87e672d49d7d178691b0dfaab0af863"),
    ]
)
