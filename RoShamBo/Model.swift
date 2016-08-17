//
//  Model.swift
//  RoShamBo
//
//  Created by Jack Ngai on 8/17/16.
//  Copyright © 2016 Jack Ngai. All rights reserved.
//

import Foundation

enum Hand:Int{
    case Rock = 0
    case Paper
    case Scissors
}


func generateHand()->Hand?{
    return Hand.init(rawValue: Int(arc4random() % 3))
}

func determineWinner(player:Hand, computer:Hand) -> (String, String){
    let possibility = (player, computer)
    switch possibility {
    case (.Rock, .Scissors):
        return ("Rock smashes Scissors. You Win!", "RockWins")
    case (.Paper, .Rock):
        return ("Paper covers Rock. You Win!", "PaperWins")
    case (.Scissors, .Paper):
        return ("Scissors cuts Paper. You Win!", "ScissorsWins")
    case (.Rock, .Paper):
        return ("Paper covers Rock. You Lose!", "PaperWins")
    case (.Paper, .Scissors):
        return ("Scissors cuts Paper. You Lose!", "ScissorsWins")
    case (.Scissors, .Rock):
        return ("Rock smashes Scissors. You Lose!", "RockWins")
    case (.Rock, .Rock), (.Paper, .Paper), (.Scissors, .Scissors):
        return ("It's a tie", "Tie")
    }
}