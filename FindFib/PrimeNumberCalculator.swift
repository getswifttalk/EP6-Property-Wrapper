//
//  PrimeNumberCalculator.swift
//  FindFib
//
//  Created by Ambas Chobsanti on 26/10/19.
//  Copyright © 2019 Ambas Chobsanti. All rights reserved.
//

import Foundation

class PrimeNumberCalculator {
    
    func isPrimeNumber(number: Int) -> Bool {
        if number <= 1 {
            return false
        }
        if number <= 3 {
            return true
        }
        for i in 2..<(number/2) {
            if number % i == 0 {
                return false
            }
        }
        return true
    }
}
