//
//  Vader.swift
//  Day1
//
//  Created by uppersky04 on 4/24/15.
//  Copyright (c) 2015 uppersky. All rights reserved.
//

import Foundation
import SpriteKit

class Vader : SKSpriteNode{
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(imagenamed: String){
        let imageTexture = SKTexture(imageNamed: imagenamed)
        super.init(texture:imageTexture,color:nil,size:imageTexture.size())
        
        self.physicsBody = SKPhysicsBody(rectangleOfSize: imageTexture.size())
        self.physicsBody?.dynamic = false
        self.physicsBody?.mass = 1
    }
    
    func makeBodyDynamic(){
        self.physicsBody?.dynamic = true
    }

}