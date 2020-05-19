//
//  SpriteKitGameViewController.swift
//  Example
//
//  Created by Tomasz Lewandowski on 19/05/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import Cocoa
import SpriteKit
import LionRenderer2D
import LionECS

class SpriteKitGameViewController: NSViewController {
    var skScene: SKScene!
    var skView: SKView!
    var game: GameSpriteKit<ComponentManager>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSceneKit()
        setupGame()
    }
    
    func setupSceneKit() {
        skScene = SKScene(size: CGSize(width: 100, height: 200))
        skView = SKView(frame: view.frame)
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        skScene.scaleMode = .resizeFill
        skView.presentScene(skScene)
        view.addSubview(skView)
    }
    
    func setupGame() {
        game = GameSpriteKit<ComponentManager>(scene: skScene)
    }
}
