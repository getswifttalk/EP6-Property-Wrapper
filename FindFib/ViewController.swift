//
//  ViewController.swift
//  FindFib
//
//  Created by Ambas Chobsanti on 20/10/19.
//  Copyright © 2019 Ambas Chobsanti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var primeFlagLabel: UILabel!
    let fibCalculator = FibCalculator()
    let primeNumberCalculator = PrimeNumberCalculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let current = fibCalculator.getCurrent()
        numberLabel.text = String(current)
        displayPrimeFlag(number: current)
    }
    
    @IBAction func didTabForward(_ sender: Any) {
        let next = fibCalculator.getNext()
        numberLabel.text = String(next)
        displayPrimeFlag(number: next)
    }
    
    @IBAction func didTabBackward(_ sender: Any) {
        let previous = fibCalculator.getPrevious()
        numberLabel.text = String(previous)
        displayPrimeFlag(number: previous)
    }
    
    private func displayPrimeFlag(number: Int) {
        if primeNumberCalculator.isPrimeNumber(number: number) {
            primeFlagLabel.text = "🤡"
        } else {
            primeFlagLabel.text = "🤔"
        }
    }
}

