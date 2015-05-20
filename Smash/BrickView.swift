//
//  BrickView.swift
//  Smash
//
//  Created by Kyle Brooks Robinson on 5/19/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

import UIKit

class BrickView: UIView {
    
    var points = 0
    
    var health = 0 {
        
        didSet {
            
            if points == 0 { points = health * 100 }
            setNeedsDisplay()
            
        }
    }

    override func drawRect(rect: CGRect) {
        
        var context = UIGraphicsGetCurrentContext()
        
        UIColor(white: 0.0, alpha: 0.3 * health + 0.1).set()
        
        CGContextFillRect(context, rect)
        
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
