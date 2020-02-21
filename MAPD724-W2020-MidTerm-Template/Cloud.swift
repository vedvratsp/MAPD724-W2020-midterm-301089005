//Name: Vedvrat Singh
//Student No.: 301089005import SpriteKit


//
//  AppDelegate.swift
//  MAPD724-W2020-Lesson2
//
//  Created by Tom Tsiliopoulos on 2020-01-15.
//  Copyright © 2020 CentennialCollege. All rights reserved.
//

import SpriteKit
import GameplayKit

class Cloud: GameObject
{
    
    
    //constructor
    init()
    {
        super.init(imageString: "cloud", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Life Cycle Functions
    override func CheckBounds()
    {
        // bottom boundary
        if(self.position.x < -801)
        {
            self.Reset()
        }
    }
    
    func Move()
    {
        self.position.y -= self.dy!
        self.position.x -= self.dx!
    }
    
    override func Reset()
    {
        self.position.x = 801
        let randomY:Int = (randomSource?.nextInt(upperBound: 614))! - 307
        self.position.y = CGFloat(randomY)
        self.dx = CGFloat((randomSource?.nextUniform())! * 5.0) + 5.0
        self.dy = CGFloat((randomSource?.nextUniform())! * -4.0) + 2.0
        self.isColliding = false
    }
    
    override func Start()
    {
        self.zPosition = 3
        self.Reset()
        self.alpha = 0.5
    }
    
    override func Update()
    {
        self.Move()
        self.CheckBounds()
    }
    
    
}
