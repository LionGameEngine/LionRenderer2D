//
//  WorldRotationComponent.swift
//  Example
//
//  Created by Tomasz Lewandowski on 19/05/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import LionECS

public struct WorldRotationComponent: PComponent {
    public var rotation: Float
    
    public init(rotation: Float) {
        self.rotation = rotation
    }
}
