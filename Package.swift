// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "PackageTest",
    platforms: [
        .macOS(.v10_13), .iOS(.v12), .tvOS(.v12), .watchOS(.v3)
    ],
    products: [
        .library(name: "PackageTest", targets: ["PackageTest"])
    ],
    dependencies: [
        .package(url: "git@github.com:Swinject/Swinject.git", from: "2.7.0")
    ],
    targets: [
        .target(name: "PackageTest", dependencies: ["Swinject"])
    ]
)
