//
//  MetalRenderer.swift
//  LionRenderer
//
//  Created by Tomasz Lewandowski on 21/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

#if os(iOS) || os(watchOS) || os(tvOS)
import UIKit
#elseif os(OSX)
import Cocoa
#endif

#if canImport(Metal) && canImport(MetalKit)
import Metal
import MetalKit

public final class MetalRenderer: NSObject, PRenderer, MTKViewDelegate {
    public typealias ResourceDescriptor = Void
    private var view: MTKView
    private var device: MTLDevice
    private var metalCommandQueue: MTLCommandQueue

    public init(view: MTKView, device: MTLDevice) {
        self.view = view
        self.device = device
        metalCommandQueue = device.makeCommandQueue()!
        super.init()
        view.delegate = self
    }
        
    public func render(renderable: RenderComponent, atPosition: WorldPositionComponent, withRotation: WorldRotationComponent) {
    }
    
    public func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {
    }

    public func draw(in view: MTKView) {
        guard let drawable = view.currentDrawable else {
          return
        }
            
        let renderPassDescriptor = MTLRenderPassDescriptor() // 2
        renderPassDescriptor.colorAttachments[0].texture = drawable.texture // 3
        renderPassDescriptor.colorAttachments[0].loadAction = .clear // 4
        renderPassDescriptor.colorAttachments[0]
          .clearColor = MTLClearColor(red: 0, green: 0, blue: 1, alpha: 1.0) // 5
            
        // 6
        guard let commandBuffer = metalCommandQueue.makeCommandBuffer() else {
          return
        }
            
        // 7
        guard let renderEncoder = commandBuffer
          .makeRenderCommandEncoder(descriptor: renderPassDescriptor) else {
            return
        }
            
        // Frame drawing goes here
            
        renderEncoder.endEncoding() // 8

        commandBuffer.present(drawable) // 9
        commandBuffer.commit() // 10
    }
    
    public func assign(resource: ResourceDescriptor, to: RenderComponent) {
        
    }

}
#endif
