//
//  UpdatePositionSystem.swift
//  Example
//
//  Created by Tomasz Lewandowski on 19/05/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import LionECS
import LionRenderer2D

public final class UpdatePositionSystem<ComponentManager: PComponentManager>: ComponentSystem<ComponentManager> {
    override public func update() {
        let query = EntityQuery<ComponentManager>(filters: [Requires<WorldPositionComponent>(), Requires<RenderComponent>()])
        let result = try! entityRequester.queryEntities(query: query)
        result.forEach { (position: inout WorldPositionComponent) in
            position.x += 0.01
            position.y += 0.01
        }
    }
}
