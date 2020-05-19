//
//  LayerComponent.swift
//  LionRenderer2D
//
//  Created by Tomasz Lewandowski on 19/05/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import LionECS

public struct LayerComponent: PComponent {
    public var layer: Int
    
    public init(layer: Int) {
        self.layer = layer
    }
}
