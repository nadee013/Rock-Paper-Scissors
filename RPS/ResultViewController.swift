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
        self.resultLabel.numberOfLines = 3
        
        switch (selectedValue, randomValue) {
            case ("Paper", "Paper"), ("Rock", "Rock"), ("Scissors", "Scissors"):
                self.resultImage.image = UIImage(named: "tie")
                self.resultLabel.text = "Wow....! Congractz...\n It's a tie"

            case ("Paper", "Rock"):
                self.resultImage.image = UIImage(named: "PaperWins")
                self.resultLabel.text = "Hurray....! Congractz...\n You win"
            
            case ("Paper", "Scissors"):
                self.resultImage.image = UIImage(named: "ScissorsWins")
                self.resultLabel.text = "Oops....! Sorry...\n You loose"
            
            case ("Rock", "Paper"):
                self.resultImage.image = UIImage(named: "PaperWins")
                self.resultLabel.text = "Oops....! Sorry...\n You loose."
            
            case ("Rock", "Scissors"):
                self.resultImage.image = UIImage(named: "RockWins")
                self.resultLabel.text = "Hurray....! Congractz...\n You win"

            case ("Scissors", "Paper"):
                self.resultImage.image = UIImage(named: "ScissorsWins")
                self.resultLabel.text = "Hurray....! Congractz...\n You win"

            case ("Scissors", "Rock"):
                self.resultImage.image = UIImage(named: "RockWins")
                self.resultLabel.text = "Oops....! Sorry...\n You loose"

            default :
                self.resultImage.image = UIImage(named: "error")
                self.resultLabel.text = "Mmmm...Looks something is wrong"
        }

        
    }
    
    @IBAction func dismiss(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
