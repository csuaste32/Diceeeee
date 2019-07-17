//
//  ViewController.swift
//  DiceApp
//
//  Created by SER-YCL7 on 7/11/19.
//  Copyright © 2019 CSApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet var dice1: UIImageView!
    @IBOutlet var dice2: UIImageView!
    @IBOutlet var labelText: UILabel!
    @IBOutlet var score1: UILabel!
    @IBOutlet var score2: UILabel!
    
    var points1 = 0
    var points2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButton(_ sender: UIButton) {
    
    randomDiceIndex1 = Int(arc4random_uniform(5))
    randomDiceIndex2 = Int(arc4random_uniform(5))
    
    dice1.image = UIImage(named: diceArray[randomDiceIndex1])
    dice2.image = UIImage(named: diceArray[randomDiceIndex2])
    
    
    if randomDiceIndex1 > randomDiceIndex2 {
    labelText.text = "D1 Wins!"
    score1.text = "\(points1 + 1)"
    points1 = points1 + 1
        }
    if randomDiceIndex1 < randomDiceIndex2 {
    labelText.text = "D2 Wins!"
    score2.text = "\(points2 + 1)"
    points2 = points2 + 1
        }
    if randomDiceIndex1 == randomDiceIndex2 {
    labelText.text = "It's a Tie!"
        }
}
}
