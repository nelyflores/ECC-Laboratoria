//
//  GameState..swift
//  RockPaperScissors
//
//  Created by Apple Device 7 on 10/5/19.
//  Copyright © 2019 Ana Steph. All rights reserved.
//

import Foundation

enum Gamestate {
    case Start, Win, Lose, Tie
    var descripcion: String {
        switch self {
        case .Start:
            return "Iniciar el juego"
        case .Win:
            return "Ya ganaste !!!"
        case .Lose:
            return "Perdiste"
        case .Tie:
            return "Empate"
            
        }
    }
}

