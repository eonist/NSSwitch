// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "NSSwitch",
    platforms: [.macOS(.v10_13)],
    products: [
        .library(
            name: "NSSwitch",
            targets: ["NSSwitch"])
    ],
    dependencies: [
        .package(url: "https://github.com/eonist/With.git", .branch("master")),
        .package(url: "https://github.com/eonist/Spatial.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "NSSwitch",
            dependencies: ["With", "Spatial"])
    ]
)
