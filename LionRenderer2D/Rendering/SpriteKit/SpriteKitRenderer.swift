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
    public typealias ResourceDescriptor = SKNode
    private let scene: SKScene
    private var nodes: [Int: SKNode] = [:]
    var rootNode: SKNode
    
    public init(scene: SKScene) {
        self.scene = scene
        rootNode = SKNode()
        scene.addChild(rootNode)
    }
    
    public func render(renderable: RenderComponent, atPosition: WorldPositionComponent, withRotation: WorldRotationComponent) {
        nodes[renderable.resourceId]?.position = CGPoint(x: CGFloat(atPosition.x), y: CGFloat(atPosition.y))
        nodes[renderable.resourceId]?.zRotation = CGFloat(withRotation.rotation)
    }
    
    public func assign(resource: SKNode, to: RenderComponent) {
        nodes[to.resourceId] = resource
        rootNode.addChild(resource)
    }
    
    public func resource(forComponent: RenderComponent) -> SKNode {
        return nodes[forComponent.resourceId]!
    }
}

#endif
