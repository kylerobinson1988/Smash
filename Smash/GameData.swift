//
//  GameData.swift
//  Smash
//
//  Created by Kyle Brooks Robinson on 5/20/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

import UIKit

private let _data = GameData()


class GameData: NSObject {
   
    class func mainData() -> GameData { return _data }
    
    var currentLevel = 0
    var currentLives = 5
    var currentScore = 0
    
    var levels: [[[Int]]] = [
    
        [
            [2,2],
            [1,2,1]
        ],
        [
            [2,3,2],
            [1,1,1,1,1],
            [1,0,2,0,1]
        ],
        [
            [1,1,1,2,2],
            [2,3,2,3,2],
            [4,1,3,1,4]
        ],
        [
            [2,2,2],
            [4,1,4,1,4],
            [1,2,1,3,4]
        ],
        [
            [2,2,1,1,2,2],
            [4,4,3,3,4,4],
            [1,2,4,4,2,1],
        
        ]
    
    
    
    
    ]
    
    var playerInfo: [String:AnyObject] = [
    
        "ballsLost" : 0,
        "levelsBeat" : 0,
        "topScore" : 0,
    
    ]
    
    func getCurrentLevelBricks() -> [[Int]] {
        
        return levels[currentLevel]
        
    }
    
}
