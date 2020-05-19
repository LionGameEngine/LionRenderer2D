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
    name: "LionRenderer2D",
    products: [
        .library(
            name: "LionRenderer2D",
            targets: ["LionRenderer2D"])
    ],
    dependencies: [
        .package(url: "https://github.com/LionGameEngine/LionECS.git")
    ],
    targets: [
        .target(
            name: "LionRenderer2D",
            dependencies: ["LionECS"],
            path: "LionRenderer2D"),
        .testTarget(
            name: "LionRenderer2DTests",
            dependencies: ["LionECS", "LionRenderer2D"],
            path: "LionRenderer2DTests")
    ]
)
