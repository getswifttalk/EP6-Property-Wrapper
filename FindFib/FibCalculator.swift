//
//  FibCalculator.swift
//  FindFib
//
//  Created by Ambas Chobsanti on 26/10/19.
//  Copyright © 2019 Ambas Chobsanti. All rights reserved.
//

import Foundation

class FibCalculator {
    
    func getCurrent() -> Int {
        return readFib().last ?? 0
    }
    
    func getNext() -> Int {
        calculateNextFib()
        return readFib().last ?? 0
    }
    
    func getPrevious() -> Int {
        var fib = readFib()
        let _ = fib.popLast()
        writeFib(fib: fib)
        return fib.last ?? 0
    }
    
    private func readFib() -> [Int] {
        let fib = GlobalSettings.fib
        return fib
    }
    
    private func writeFib(fib: [Int]) {
        GlobalSettings.fib = fib
    }
    
    private func calculateNextFib() {
        var fib = readFib()
        if fib.count == 0  {
            fib = [0]
            writeFib(fib: fib)
        } else if fib.count == 1 {
            fib = [0,1]
            writeFib(fib: fib)
        } else {
            var tempFib = fib
            let lastFib = tempFib.popLast()!
            let beforeLastFib = tempFib.popLast()!
            fib.append(lastFib + beforeLastFib)
            writeFib(fib: fib)
        }
    }
}
