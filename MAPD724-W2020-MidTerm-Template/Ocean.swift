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

class Ocean : GameObject
{
    //constructor
    init()
    {
        super.init(imageString: "ocean", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //GameObject Life Cycle Functions
    override func CheckBounds()
    {
           
        // check top boundary
        if(self.position.x <= -896) // note maybe reset earlier
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        self.position.x = 896
    }
    
    override func Start()
    {
        self.zPosition = 0
        //self.Reset()
        self.dx = 5.0
    }
    
    override func Update() {
        Move()
        CheckBounds()
    }
    
    func Move()
    {
        self.position.x -= self.dx!
    }

}
