//
//  GameScene.swift
//  Numerica
//
//  Created by Taichi Kato on 1/6/17.
//  Copyright © 2017 taichikato. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var circleTouch: UITouch?
    private var currentRainDropSpawnTime : TimeInterval = 0
    private var lastUpdateTime : TimeInterval = 0
    var circle1 = Circle(type: .light, size: CGSize(width: 80, height: 80), number: 6)
    var circle2 = Circle(type: .light, size: CGSize(width: 80, height: 80), number: 6)
    override func didMove(to view: SKView) {
        let w = (size.width + size.height) * 0.2
        circle1.name = "userCircle"
        circle1.size = CGSize(width: w, height: w)
        circle2.size = CGSize(width: w, height: w)
        let bg = SKSpriteNode(imageNamed: "bg_blank")
        bg.anchorPoint = CGPoint.zero
        bg.position = CGPoint.zero
        addChild(bg)
        // Create shape node to use during mouse interaction
        
        circle1.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        addChild(circle1)
        
        circle2.position = CGPoint(x: 300, y: 200)
        addChild(circle2)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)           // 1
            if let circle = atPoint(location) as? Circle {        // 2
                circle.position = CGPoint(x: location.x, y: location.y)
                print(CGPoint(x: location.x, y: location.y))
            }
        }
    }
}
