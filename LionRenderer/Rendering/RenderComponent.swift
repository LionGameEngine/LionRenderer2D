//
//  RenderComponent.swift
//  LionRenderer
//
//  Created by Tomasz Lewandowski on 21/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import LionECS

public struct RenderComponent: PComponent {
    public var data: Int
    public init(data: Int) {
        self.data = data
    }
}
