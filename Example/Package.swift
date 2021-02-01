// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SBLibrary",
    platforms: [.iOS(.v10)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "SBLibrary", targets: ["SBLibrary"]),

        .library(name: "SBLibraryDynamic", type: .dynamic, targets: ["SBLibrary"]),

        .library(name: "SBLibraryStatic", type: .static, targets: ["SBLibrary"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/Quick/Quick.git", from: "2.2.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "8.0.7")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SBLibrary",
            dependencies: [],
            path: "../SBLibrary/"),
        .testTarget(
            name: "Pods-SBLibrary_Tests",
            dependencies: ["SBLibrary", "Quick", "Nimble"]),
    ]
)
