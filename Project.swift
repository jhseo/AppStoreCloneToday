import ProjectDescription
import ProjectDescriptionHelpers

let projectName = "AppStoreCloneToday"

let project = Project(
    name: projectName,
    organizationName: .organizationName,
    settings: Settings.settings(
        base: [
            "EXCLUDED_ARCHS": "arm64"
        ],
        configurations: [
            .debug(
                name: "Dev",
                xcconfig: "Configurations/Project.xcconfig"
            ),
            .release(
                name: "Release",
                xcconfig: "Configurations/Project.xcconfig"
            )
        ]
    ),
    targets: Project.appTargets(
        name: projectName,
        appDependencies: [],
        testDependencies: []
    )
)
