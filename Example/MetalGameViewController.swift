//
//  MetalGameViewController.swift
//  Example
//
//  Created by Tomasz Lewandowski on 21/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import Cocoa
import MetalKit
import Metal
import LionRenderer2D
import LionECS

class MetalGameViewController: NSViewController {
    private var metalDevice: MTLDevice!
    private var metalCommandQueue: MTLCommandQueue!
    var game: GameMetal<ComponentManager>!

    override func viewDidLoad() {
        super.viewDidLoad()
        let metalView = MTKView()
        metalView.colorPixelFormat = .bgra8Unorm
        view.wantsLayer = true
        let metalDevice = MTLCreateSystemDefaultDevice()!
        metalCommandQueue = metalDevice.makeCommandQueue()
        metalView.device = metalDevice
        game = GameMetal<ComponentManager>(view: metalView, device: metalDevice)
        view.addSubview(metalView)
        metalView.frame = view.frame
    }

}
