// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "CascadingTableDelegate",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "CascadingTableDelegate",
            targets: ["CascadingTableDelegate"]
        )
    ],
    targets: [
        .target(
            name: "CascadingTableDelegate",
            path: "CascadingTableDelegate"
        )
    ]
)
