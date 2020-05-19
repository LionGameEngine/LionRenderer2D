//
//  SpriteKitRenderer.swift
//  LionRenderer2D
//
//  Created by Tomasz Lewandowski on 19/05/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

#if canImport(SpriteKit)

import SpriteKit

public final class SpriteKitRenderer: NSObject, PRenderer, SKSceneDelegate {
    private let scene: SKScene
    
    public init(scene: SKScene) {
        self.scene = scene
    }
    
    public func render(renderable: RenderComponent, atPosition: WorldPositionComponent) {
        print("Render sprite")
    }
}

#endif
