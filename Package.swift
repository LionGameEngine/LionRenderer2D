// swift-tools-version:5.1
//
//  Package.swift
//  LionECS
//
//  Created by Tomasz Lewandowski on 20/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "LionRenderer",
    products: [
        .library(
            name: "LionRenderer",
            targets: ["LionRenderer"])
    ],
    dependencies: [
        .package(url: "https://github.com/lewandowskit93/LionECS.git", .branch("develop"))
    ],
    targets: [
        .target(
            name: "LionRenderer",
            dependencies: ["LionECS"],
            path: "LionRenderer"),
        .testTarget(
            name: "LionRendererTests",
            dependencies: ["LionECS", "LionRenderer"],
            path: "LionRendererTests")
    ]
)
