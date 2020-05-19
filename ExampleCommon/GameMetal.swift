//
//  Game.swift
//  LionRenderer
//
//  Created by Tomasz Lewandowski on 21/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import LionECS
import LionRenderer2D
import Metal
import MetalKit

public class GameMetal<ComponentManager: PComponentManager> {
    let world: World<ComponentManager>
    let renderSystem: RenderSystem<ComponentManager, MetalRenderer>
    let renderer: MetalRenderer
    
    init(view: MTKView, device: MTLDevice) {
        world = .init(componentManager: ComponentManager())
        renderSystem = world.getOrCreateSystem()
        renderer = MetalRenderer(view: view, device: device)
        renderSystem.setup(renderer: renderer)
        let entity = world.entityManager.createEntity()
        try! world.componentManager.addComponent(WorldPositionComponent(x: 11, y: 12), toEntity: entity)
        try! world.componentManager.addComponent(RenderComponent(resourceId: 10), toEntity: entity)
        gameLoop()
    }
    
    func gameLoop() {
        DispatchQueue.main.async { [weak self] in
            self?.world.update()
            self?.gameLoop()
        }
    }
}
