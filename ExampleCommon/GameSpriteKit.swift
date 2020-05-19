//
//  GameSpriteKit.swift
//  LionRenderer2D
//
//  Created by Tomasz Lewandowski on 19/05/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import LionECS
import LionRenderer2D
import SpriteKit

public class GameSpriteKit<ComponentManager: PComponentManager> {
    let world: World<ComponentManager>
    let renderSystem: RenderSystem<ComponentManager, SpriteKitRenderer>
    let renderer: SpriteKitRenderer
    
    init(scene: SKScene) {
        world = .init(componentManager: ComponentManager())
        renderSystem = world.getOrCreateSystem()
        renderer = SpriteKitRenderer(scene: scene)
        renderSystem.setup(renderer: renderer)
        let entity = world.entityManager.createEntity()
        try! world.componentManager.addComponent(WorldPositionComponent(x: 110, y: 12), toEntity: entity)
        try! world.componentManager.addComponent(RenderComponent(resourceId: 10), toEntity: entity)
        let node = SKSpriteNode(color: .red, size: CGSize(width: 10, height: 10))
        renderSystem.assign(resource: node, to: RenderComponent(resourceId: 10))
        scene.addChild(node)
        gameLoop()
    }
    
    func gameLoop() {
        DispatchQueue.main.async { [weak self] in
            self?.world.update()
            self?.gameLoop()
        }
    }
}
