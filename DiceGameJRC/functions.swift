//
//  functions.swift
//  DiceGameJRC
//
//  Created by Jacob Reilly-Cooper on 13/06/2019.
//  Copyright © 2019 Jacob Reilly-Cooper. All rights reserved.
//

import Foundation

var attempts = 0

public func attemptCounter() {
    attempts += 1
    if (attempts == 1)
    {
        print("You have had \(attempts) attempt.")
    }
    else {
        print("You have had \(attempts) attempts.")
    }
}
