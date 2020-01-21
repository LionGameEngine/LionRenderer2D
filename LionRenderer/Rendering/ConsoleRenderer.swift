//
//  ConsoleRenderer.swift
//  LionRenderer
//
//  Created by Tomasz Lewandowski on 21/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public final class ConsoleRenderer: PRenderer {
    public init() {
        
    }
    
    public func render(renderable: RenderComponent, atPosition: WorldPositionComponent) {
        print("\(renderable.data) at (\(atPosition.x),\(atPosition.y),\(atPosition.z))")
    }
}
