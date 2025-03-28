//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 고병학 on 2023/02/08.
//

import ProjectDescription
import ProjectDescriptionHelpers

let frameworkName: String = "FoundationKit"

let frameworkTargets: [Target] = FrameworkFactory(
    dependency: .init(
        frameworkDependencies: [Dep.Project.ThirdPartyManager],
        unitTestsDependencies: []
    )
).build(
    payload: .init(
        name: frameworkName,
        destinations: .iOS,
        product: .framework
    )
)

let project = ProjectFactory(
    dependency: .init(
        appTargets: [],
        frameworkTargets: frameworkTargets
    )
).build(
    payload: .init(
        name: frameworkName,
        organizationName: "kr.brody"
    )
)
