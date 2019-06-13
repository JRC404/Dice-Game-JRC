//
//  ViewController.swift
//  DiceGameJRC
//
//  Created by Jacob Reilly-Cooper on 29/05/2019.
//  Copyright © 2019 Jacob Reilly-Cooper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlets
    
    @IBOutlet weak var diceImage: UIImageView!
    @IBOutlet weak var totalScore: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var rulesText: UILabel!
    @IBOutlet weak var rollButton: UIButton!
    
    // what does the ! mean?
    
    var allDice = [#imageLiteral(resourceName: "Kismet-Ace"), #imageLiteral(resourceName: "Kismet-Deuce"), #imageLiteral(resourceName: "Kismet-Trey"), #imageLiteral(resourceName: "Kismet-Four"), #imageLiteral(resourceName: "Kismet-Five"), #imageLiteral(resourceName: "Kismet-Six")]
    var randomDiceIndex: Int = 0
    var score: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLoad()
        
    }
    
    @IBAction func rollButtonFunction(_ sender: Any) {// why Any?
    
        message.text = " "
        randomDiceIndex = Int.random(in: 0 ... 5) // what is this doing?
        diceImage.image = allDice[randomDiceIndex]
        score += randomDiceIndex + 1
        totalScore.text = "\(score)"
        rollLogic()
    }
    
    func rollLogic() {
        // the dice roll logic.
        if (randomDiceIndex == 0) {
            message.text = "You lose. Sorreh."
            score = 0
        } else if (score >= 21) {
            message.text = "You win. Alrigh'."
            score = 0
        } else {
            return
        }
    }
    
    func messageLoad() {
        // every label and button that is modified on load.
        message.text = "Let's go."
        totalScore.text = "0"
        mainText.text = "Welcome to the Dice game."
        diceImage.image = #imageLiteral(resourceName: "Kismet-Ace")
        rulesText.text = "If you score 21 or more you win! But if you roll a 1 you're out."
        rollButton.setTitle("Roll", for: .normal)
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        message.text = " "
        randomDiceIndex = Int.random(in: 0 ... 5)
        diceImage.image = allDice[randomDiceIndex]
        score += randomDiceIndex + 1
        totalScore.text = "\(score)"
        rollLogic()
    }

}
