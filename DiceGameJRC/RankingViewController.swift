//
//  RankingViewController.swift
//  DiceGameJRC
//
//  Created by Jacob Reilly-Cooper on 13/06/2019.
//  Copyright © 2019 Jacob Reilly-Cooper. All rights reserved.
//

import Foundation
import UIKit

class RankingViewController: UIViewController {

    
    @IBOutlet weak var rankingDisplayLabel: UILabel!
    @IBOutlet weak var TotalWinCounterLabel: UILabel!
    @IBOutlet weak var successRateCounterLabel: UILabel!
    
    @IBAction func AlertButton(_ sender: Any) {
        print("Print.")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rankingRun()
        totalWinRun()
        successRateRun()
        
    }
    
    func totalWinRun() {
        if (totalWinCounter == 0)
        {
            TotalWinCounterLabel.text = "This is awkward. You haven't won yet. Keep trying."

        }
        else {
        TotalWinCounterLabel.text = "You have succeeded \(Int(totalWinCounter)) times. Well done."
        }
    }
    
    func rankingRun() {
        rankingDisplayLabel.text = "You have had \(Int(attempts)) attempts"
    }
    
    func successRateRun() {
        successRateCounterFunction()
        if (successRateCounter < 50)
        {
            successRateCounterLabel.text = "Your success rate is quite low at \(Int(successRateCounter))%"
        }
        else if (successRateCounter <= 100) {
            successRateCounterLabel.text = "Your success rate is \(Int(successRateCounter))%. That is pretty damn good."
        }
        else
        {
            successRateCounterLabel.text = "You haven't won a game yet."
        }
    }
    
    // MARK: Reset
    
    @IBAction func resetButton(_ sender: Any) {
        resetAllStatistics()
        successRateRun()
        rankingRun()
        totalWinRun()
    }
    
}
