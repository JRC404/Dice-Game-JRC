//
//  functions.swift
//  DiceGameJRC
//
//  Created by Jacob Reilly-Cooper on 13/06/2019.
//  Copyright © 2019 Jacob Reilly-Cooper. All rights reserved.
//

import Foundation

var attempts = 0.0
var totalWinCounter = 0.0
var successRateCounter = 0.0

func attemptCounter() {
    attempts += 1
    if (attempts == 1)
    {
        print("You have had \(Int(attempts)) attempt.")
    }
    else {
        print("You have had \(Int(attempts)) attempts.")
    }
}

func totalWinCounterFunction() {
    totalWinCounter += 1
    if (totalWinCounter == 0)
    {
        print("This is awkward. You haven't won yet. Keep trying.")
        
    }
    else {
        print("You have succeeded \(totalWinCounter) times. Well done.")
    }
}

func successRateCounterFunction() {
    successRateCounter = ((totalWinCounter / attempts) * 100).rounded(.toNearestOrEven)
    print("\(successRateCounter)%")
    
}


