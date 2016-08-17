//
//  ResultsViewController.swift
//  RoShamBo
//
//  Created by Jack Ngai on 8/17/16.
//  Copyright © 2016 Jack Ngai. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var player:Hand?, computer = generateHand()
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultText: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        let result = determineWinner(player!, computer: computer!)
        resultText.text = result.0
        resultImage.image = UIImage(named: result.1)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1.0) {
            self.resultImage.hidden = !self.resultImage.hidden
            self.resultText.hidden = !self.resultText.hidden
        }
        
    }

    @IBAction func playAgain(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}

