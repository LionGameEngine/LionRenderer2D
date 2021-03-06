//
//  SpriteKitLayerUpdatingSystem.swift
//  Example
//
//  Created by Tomasz Lewandowski on 19/05/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

#if canImport(SpriteKit)

import LionECS
import SpriteKit

public final class SpriteKitLayerUpdatingSystem<ComponentManager: PComponentManager>: ComponentSystem<ComponentManager> {
    
    private var renderSystem: RenderSystem<ComponentManager, SpriteKitRenderer>!
    
    public required init(world: World<ComponentManager>, entityManager: EntityManager<ComponentManager>, componentManager: ComponentManager, entityRequester: EntityRequester<ComponentManager>) {
        super.init(world: world, entityManager: entityManager, componentManager: componentManager, entityRequester: entityRequester)
        renderSystem = world.getExistingSystem()
    }
    
    override public func update() {
        let query = EntityQuery<ComponentManager>(filters: [
            Requires<LayerComponent>(),
            Requires<RenderComponent>()
        ])
        let result = try! entityRequester.queryEntities(query: query)
        result.forEach { [weak self] (layer: LayerComponent, render: RenderComponent) in
            self?.renderSystem?.resource(forComponent: render).zPosition = CGFloat(layer.layer)
        }
    }
}

#endif
