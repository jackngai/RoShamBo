//
//  ViewController.swift
//  RoShamBo
//
//  Created by Jack Ngai on 8/17/16.
//  Copyright © 2016 Jack Ngai. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showResultsFromPaper"{
            passPlayerSelection(segue, hand: Hand.Paper)
        }
        if segue.identifier == "showResultsFromScissors"{
            passPlayerSelection(segue, hand: Hand.Scissors)
        }
    }

    @IBAction func tapRockButton(sender: UIButton) {
        let controller:ResultsViewController
        controller = storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        controller.player = .Rock
        presentViewController(controller, animated: true, completion: nil)
    }

    @IBAction func tapPaperButton(sender: UIButton) {
        performSegueWithIdentifier("showResultsFromPaper", sender: self)
        
    }
    
    func passPlayerSelection(segue: UIStoryboardSegue, hand: Hand){
        let controller = segue.destinationViewController as! ResultsViewController
        controller.player = hand
    }
    


}

