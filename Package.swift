  // swift-tools-version:5.5
  // The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "combine-core-architecture",
  platforms: [
    .iOS(.v11),
    .macOS(.v10_14),
    .tvOS(.v12),
    .watchOS(.v5),
  ],
  products: [
    .library(
      name: "ComposableArchitecture",
      targets: ["ComposableArchitecture"]),
  ],
  dependencies: [
    .package(url: "https://github.com/FullStack-Swift/OpenCombine", branch: "develop"),
    .package(url: "https://github.com/pointfreeco/swift-case-paths", from: "0.7.0"),
    .package(url: "https://github.com/pointfreeco/xctest-dynamic-overlay", from: "0.2.1"),
  ],
  targets: [
    .target(
      name: "ComposableArchitecture",
      dependencies: [
        "OpenCombine",
        .product(name: "OpenCombineFoundation", package: "OpenCombine"),
        .product(name: "OpenCombineDispatch", package: "OpenCombine"),
        .product(name: "CasePaths", package: "swift-case-paths"),
        .product(name: "XCTestDynamicOverlay", package: "xctest-dynamic-overlay"),
      ]),
  ]
)
