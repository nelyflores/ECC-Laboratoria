import UIKit

enum GameState {
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
