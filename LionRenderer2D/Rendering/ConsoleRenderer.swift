//
//  ConsoleRenderer.swift
//  LionRenderer
//
//  Created by Tomasz Lewandowski on 21/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public final class ConsoleRenderer<Resource>: PRenderer {
    public init() {
        
    }
    
    public func render(renderable: RenderComponent, atPosition: WorldPositionComponent, withRotation: WorldRotationComponent) {
        print("\(renderable.resourceId) at (\(atPosition.x),\(atPosition.y))")
    }
    
    public func assign(resource: Resource, to: RenderComponent) {
    }
}
