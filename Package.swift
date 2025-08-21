// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterCeex",
    products: [
        .library(name: "TreeSitterCeex", targets: ["TreeSitterCeex"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterCeex",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterCeexTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterCeex",
            ],
            path: "bindings/swift/TreeSitterCeexTests"
        )
    ],
    cLanguageStandard: .c11
)
