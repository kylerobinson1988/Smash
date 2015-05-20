//
//  BallCountView.swift
//  Smash
//
//  Created by Kyle Brooks Robinson on 5/19/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

import UIKit

class BallCountView: UIView {
    
    
   
    var ballsLeft = 3 {
        
        didSet {
            
            setNeedsDisplay()
        }
    }
    
    

    
    override func drawRect(rect: CGRect) {

        backgroundColor = UIColor.clearColor()
        var context = UIGraphicsGetCurrentContext()
        
        let balls = ballsLeft
        let padding: CGFloat = 25
        
        for i in 0..<ballsLeft {
            
            var countBallWidth: CGFloat = CGFloat(i) * padding
            
            // x, y, width, height
            var countBall = UIView(frame: CGRectMake(countBallWidth, 0, 20, 20))
            
//            countBall.center = CGPointMake(10, 10)
            countBall.backgroundColor = UIColor.whiteColor()
            countBall.layer.cornerRadius = 10
            addSubview(countBall)
            
        }
    
    }

}
