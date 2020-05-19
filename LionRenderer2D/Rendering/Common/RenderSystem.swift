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
        for layer in getLayers() {
            renderLayer(layer: layer)
        }
    }
    
    public func assign(resource: Renderer.ResourceDescriptor, to: RenderComponent) {
        renderer.assign(resource: resource, to: to)
    }
    
    private func getLayers() -> [Int] {
        var layers: [Int] = []
        let query = EntityQuery<ComponentManager>(filters: [
            Requires<LayerComponent>()])
        let result = try! entityRequester.queryEntities(query: query)
        result.forEach { (layerComponent: LayerComponent) in
            layers.append(layerComponent.layer)
        }
        return layers.sorted()
    }
    
    private func renderLayer(layer: Int) {
        let query = EntityQuery<ComponentManager>(filters: [
            Requires<LayerComponent>(),
            Requires<WorldPositionComponent>(),
            Requires<RenderComponent>(),
            Requires<WorldRotationComponent>()])
        let result = try! entityRequester.queryEntities(query: query)
        result.forEach { (renderable: RenderComponent, layerComponent: LayerComponent, position: WorldPositionComponent, rotation: WorldRotationComponent) in
            guard layerComponent.layer == layer else { return }
            renderer.render(renderable: renderable, atPosition: position, withRotation: rotation)
        }

    }
}
