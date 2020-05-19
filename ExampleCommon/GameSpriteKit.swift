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
        let _: UpdateTransformSystem<ComponentManager> = world.getOrCreateSystem()
        let layerSystem: SpriteKitLayerUpdatingSystem = world.getOrCreateSystem()
        renderer = SpriteKitRenderer(scene: scene)
        renderSystem.setup(renderer: renderer)
        createEntity(withColor: .blue, atLayer: 3, andSize: 20, id: 1)
        createEntity(withColor: .red, atLayer: 1, andSize: 40, id: 2)
        layerSystem.setup(renderer: renderer)
        gameLoop()
    }
    
    private func gameLoop() {
        DispatchQueue.main.async { [weak self] in
            self?.world.update()
            self?.gameLoop()
        }
    }
    
    private func createEntity(withColor color: NSColor, atLayer layer: Int, andSize size: Int, id: Int) {
        let entity = world.entityManager.createEntity()
        try! world.componentManager.addComponent(WorldPositionComponent(x: 110, y: 12), toEntity: entity)
        try! world.componentManager.addComponent(WorldRotationComponent(rotation: 0), toEntity: entity)
        try! world.componentManager.addComponent(RenderComponent(resourceId: id), toEntity: entity)
        try! world.componentManager.addComponent(LayerComponent(layer: layer), toEntity: entity)
        try! world.componentManager.addComponent(UpdateTransformComponent(), toEntity: entity)
        let node = SKSpriteNode(color: color, size: CGSize(width: size, height: size))
        renderSystem.assign(resource: node, to: RenderComponent(resourceId: id))
    }
}
