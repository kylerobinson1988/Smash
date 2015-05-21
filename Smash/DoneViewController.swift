//
//  DoneViewController.swift
//  Smash
//
//  Created by Kyle Brooks Robinson on 5/20/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

import UIKit

class DoneViewController: UIViewController {

    
    @IBAction func nextLevelButton(sender: AnyObject) {
        
    }
    
    @IBAction func quitButton(sender: AnyObject) {
        
        GameData.mainData().currentLevel = 0
        GameData.mainData().currentScore = 0
        GameData.mainData().currentLives = 5
        
        
    }
    
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var ballsLabel: UILabel!
    
    var currentScore = GameData.mainData().currentScore
    var currentLives = GameData.mainData().currentLives
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pointsLabel.text = "Score: \(currentScore)"
        ballsLabel.text = "Lives: \(currentLives)"


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
