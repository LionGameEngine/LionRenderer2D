//
//  ViewController.swift
//  ExampleIOS
//
//  Created by Tomasz Lewandowski on 21/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import UIKit
import MetalKit
import Metal
import LionRenderer
import LionECS

class ViewController: UIViewController {
    private var metalDevice: MTLDevice!
    private var metalCommandQueue: MTLCommandQueue!
    var game: Game<ComponentManager>!

    override func viewDidLoad() {
        super.viewDidLoad()
        let metalView = MTKView()
        metalView.colorPixelFormat = .bgra8Unorm
        let metalDevice = MTLCreateSystemDefaultDevice()!
        metalCommandQueue = metalDevice.makeCommandQueue()
        metalView.device = metalDevice
        game = Game<ComponentManager>(view: metalView, device: metalDevice)
        view.addSubview(metalView)
        metalView.frame = view.frame
    }

}
