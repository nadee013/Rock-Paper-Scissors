//
//  ResultViewController.swift
//  RPS
//
//  Created by Nadee Anuththara on 12/29/15.
//  Copyright © 2015 Nadee Anuththara. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var selectedValue: String!
    var randomValue: String!
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        self.resultLabel.textAlignment = NSTextAlignment.Center
        
        switch (selectedValue, randomValue) {
            case ("Paper", "Rock"):
                self.resultImage.image = UIImage(named: "PaperWins")
                self.resultLabel.text = "Hurray....! Congractz...You win"
            
            case ("Paper", "Scissors"):
                self.resultImage.image = UIImage(named: "ScissorsWins")
                self.resultLabel.text = "Oops....! Sorry...You loose"
            
            case ("Rock", "Paper"):
                self.resultImage.image = UIImage(named: "PaperWins")
                self.resultLabel.text = "Oops....! Sorry...You loose."
            
            case ("Rock", "Scissors"):
                self.resultImage.image = UIImage(named: "RockWins")
                self.resultLabel.text = "Hurray....! Congractz...You win"

            case ("Scissors", "Paper"):
                self.resultImage.image = UIImage(named: "ScissorsWins")
                self.resultLabel.text = "Hurray....! Congractz...You win"

            case ("Scissors", "Rock"):
                self.resultImage.image = UIImage(named: "RockWins")
                self.resultLabel.textAlignment = NSTextAlignment.Center
                self.resultLabel.text = "Oops....! Sorry...You loose"

            default :
                self.resultImage.image = UIImage(named: "tie")
                self.resultLabel.text = "Wow....! It's a tie"
        }

        
    }
    
    @IBAction func dismiss(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
