//
//  ShuffleViewController.swift
//  RPS
//
//  Created by Nadee Anuththara on 12/29/15.
//  Copyright © 2015 Nadee Anuththara. All rights reserved.
//

import UIKit

class ShuffleViewController: UIViewController {
    
    @IBAction func clickPaper(sender: UIButton) {
        shuffle("Paper")
    }
    
    @IBAction func clickRock(sender: UIButton) {
        shuffle("Rock")
    }
    
    @IBAction func clickScissors(sender: UIButton) {
        shuffle("Scissors")
    }
    
    func shuffle(value: String) {
        var controller:ResultViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        
        controller.selectedValue = value
        controller.randomValue = self.randomValue()
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    func randomValue() -> String {
        let ran = 1 + arc4random() % 3
        
        switch ran {
            case 1: return "Paper"
            case 2: return "Rock"
            default: return "Scissors"
        }
    }
}