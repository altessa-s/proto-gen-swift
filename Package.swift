// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Proto",
    platforms: [
        .macOS(.v13),
        .iOS(.v16),
    ],
    products: [
        .library(name: "Proto", targets: ["Proto"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.30.0"),
    ],
    targets: [
        .target(
            name: "Proto",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
            ],
            path: "Sources/Proto"
        ),
    ]
)
