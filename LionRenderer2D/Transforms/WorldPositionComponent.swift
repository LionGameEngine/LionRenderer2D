//
//  WorldPositionComponent.swift
//  LionRenderer
//
//  Created by Tomasz Lewandowski on 21/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import LionECS

public struct WorldPositionComponent: PComponent {
    public var x: Float
    public var y: Float
    
    public init(x: Float, y: Float, layer: Float) {
        self.x = x
        self.y = y
    }
}
