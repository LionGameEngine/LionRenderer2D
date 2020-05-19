//
//  RenderSystem.swift
//  LionRenderer
//
//  Created by Tomasz Lewandowski on 21/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import LionECS

public final class RenderSystem<ComponentManager: PComponentManager, Renderer: PRenderer>: ComponentSystem<ComponentManager> {
    private var renderer: Renderer!
    
    public func setup(renderer: Renderer) {
        self.renderer = renderer
    }
    
    override public func update() {
        let query = EntityQuery<ComponentManager>(filters: [Requires<WorldPositionComponent>(), Requires<RenderComponent>()])
        let result = try! entityRequester.queryEntities(query: query)
        result.forEach { (renderable: RenderComponent, position: WorldPositionComponent) in
            renderer.render(renderable: renderable, atPosition: position)
        }
    }
    
    public func assign(resource: Renderer.ResourceDescriptor, to: RenderComponent) {
        renderer.assign(resource: resource, to: to)
    }
}