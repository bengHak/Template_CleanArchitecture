import ProjectDescription
import ProjectDescriptionHelpers

let appName: String = "Application"

let infoPlist: [String: Plist.Value] = [
    "CFBundleExecutable": "$(EXECUTABLE_NAME)",
    "CFBundleShortVersionString": "1.0",
    "CFBundleVersion": "1",
    "CFBundleIdentifier": "$(PRODUCT_BUNDLE_IDENTIFIER)",
    "CFBundleDisplayName": "Application",
    "UIUserInterfaceStyle": "Light",
    "UILaunchScreen": [
        "UIColorName": "",
        "UIImageName": "",
    ],
]

// MARK: - App
let appTargets: [Target] = AppFactory(
    dependency: AppFactory.Dependency(
        appDependencies: [
            Dep.Project.FoundationKit,
            Dep.Project.DIKit,
            Dep.Project.DataKit,
            Dep.Project.DomainKit,
            Dep.Project.PresentationKit,
        ],
        unitTestsDependencies: []
    )
).build(
    payload: AppFactory.Payload(
        bundleID: "kr.brody.\(appName)",
        name: appName,
        destinations: .iOS,
        infoPlist: infoPlist
    )
)

// MARK: - Project
let project = ProjectFactory(
    dependency: ProjectFactory.Dependency(
        appTargets: appTargets,
        frameworkTargets: []
    )
).build(
    payload: ProjectFactory.Payload(
        name: appName,
        organizationName: "kr.brody"
    )
)
