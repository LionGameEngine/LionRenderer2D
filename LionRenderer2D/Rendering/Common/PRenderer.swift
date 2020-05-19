//
//  PRenderer.swift
//  LionRenderer
//
//  Created by Tomasz Lewandowski on 21/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public protocol PRenderer {
    associatedtype ResourceDescriptor
    func render(renderable: RenderComponent, atPosition: WorldPositionComponent, withRotation: WorldRotationComponent)
    func assign(resource: ResourceDescriptor, to: RenderComponent)
}
