//
//  Sign.swift
//  RockPaperScissors
//
//  Created by Apple Device 7 on 10/5/19.
//  Copyright © 2019 Ana Steph. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .Piedra
    } else if sign == 1 {
        return .Papel
    } else {
        return .Tijeras
    }
}


enum Sign {
    case Piedra
    case Papel
    case Tijeras
    var emojis: String {
        switch self {
        case .Piedra:
            return "👊🏻"
        case .Papel:
            return "🤚"
        case .Tijeras:
            return "✌️"
        }
    }
    func giveMeResults(_ signComputer: Sign) -> Gamestate {
        switch self {
        case .Piedra:
            switch signComputer {
            case .Piedra:
                return Gamestate.Tie
            case .Papel:
                return Gamestate.Lose
            case.Tijeras:
                return Gamestate.Win
            }
            
            
        case .Papel:
            switch signComputer {
            case .Piedra:
                return Gamestate.Win
            case .Papel:
                return Gamestate.Tie
            case.Tijeras:
                return Gamestate.Lose
            }
            
        case .Tijeras:
            switch signComputer {
            case .Piedra:
                return Gamestate.Lose
            case .Papel:
                return Gamestate.Win
            case.Tijeras:
                return Gamestate.Tie
            }
            
        }
    }
}


