import ProjectDescription
import ProjectDescriptionHelpers

let workspace = Workspace(
    name: "Application",
    projects: [
        "Projects/Application",
        "Projects/Modules/DataKit",
        "Projects/Modules/DomainKit",
        "Projects/Modules/FoundationKit",
        "Projects/Modules/PresentationKit",
        "Projects/Modules/ThirdPartyManager"
    ],
    schemes: [
        Scheme(
            name: "ApplicationApp",
            buildAction: .buildAction(targets: [
                .project(path: "Projects/Application", target: "Application"),
                .project(path: "Projects/Modules/DataKit", target: "DataKit"),
                .project(path: "Projects/Modules/DomainKit", target: "DomainKit"),
                .project(path: "Projects/Modules/FoundationKit", target: "FoundationKit"),
                .project(path: "Projects/Modules/PresentationKit", target: "PresentationKit"),
                .project(path: "Projects/Modules/ThirdPartyManager", target: "ThirdPartyManager")
            ])
        )
    ],
    generationOptions: .options(
        autogeneratedWorkspaceSchemes: .disabled
    )
)
