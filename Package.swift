// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BouncrSpotify",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(
            name: "BouncrSpotify",
            targets: ["BouncrSpotify"]),
    ],
    targets: [
        .binaryTarget(
            name: "BouncrSpotifyFramework",
            path: "Sources/BouncrSpotify/BouncrSpotifyFramework.xcframework"),
        .target(
            name: "BouncrSpotify",
            dependencies: [
                .target(name: "BouncrSpotifyFramework", condition: .when(platforms: [.iOS]))
            ]),
    ]
)
