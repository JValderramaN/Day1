//
//  GameScene.swift
//  Day1
//
//  Created by uppersky04 on 4/24/15.
//  Copyright (c) 2015 uppersky. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var increment = 0
    var vaderNode : Vader? =  nil
    
    override func didMoveToView(view: SKView) {
        vaderNode = Vader(imagenamed: "Vader2")
        vaderNode!.position = CGPoint(x: CGRectGetMinX(self.frame) + 80, y: (CGRectGetMinY(self.frame) + 151))
        addChild(vaderNode!)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
    /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            vaderNode!.position = location
            vaderNode!.physicsBody?.velocity = CGVectorMake(0, 0)
            vaderNode!.physicsBody?.dynamic = false
            self.vaderNode!.makeBodyDynamic()
            let waitAction = SKAction.waitForDuration(1)
            vaderNode!.runAction(waitAction,completion:{
                    self.vaderNode!.makeBodyDynamic()
                }
            )
            
            
           /* 
            
            increment++
            vaderNode!.position = CGPoint(x: CGRectGetMinX(self.frame) + 80 + CGFloat(increment * 30), y: (CGRectGetMinY(self.frame) + 151 ))
            println("position \( vaderNode!.position.y)")

            */

        /*
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
            */
        }
    }
    

   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
