// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "flutter_compass_v3",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(name: "flutter-compass-v3", targets: ["flutter_compass_v3"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "flutter_compass_v3",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ]
        )
    ]
)
