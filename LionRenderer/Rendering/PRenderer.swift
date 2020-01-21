//
//  PRenderer.swift
//  LionRenderer
//
//  Created by Tomasz Lewandowski on 21/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public protocol PRenderer {
    func render(renderable: RenderComponent, atPosition: WorldPositionComponent)
}
