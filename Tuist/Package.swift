// swift-tools-version: 6.0
import PackageDescription

#if TUIST
    import struct ProjectDescription.PackageSettings

    let packageSettings = PackageSettings(
        productTypes: [
            "Alamofire": .framework,
            "ComposableArchitecture": .staticLibrary,
            "Swinject": .framework
        ]
    )
#endif

let package = Package(
    name: "Application",
    dependencies: [
        .package(url: "https://github.com/Swinject/Swinject.git", from: "2.9.1"),
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.10.2"),
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", from: "1.18.0"),
    ]
)
