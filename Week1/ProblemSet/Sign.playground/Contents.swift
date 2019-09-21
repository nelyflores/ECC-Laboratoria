import UIKit




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
    func giveMeResults(signComputer: Sign) -> GameState {
        if Sign == .piedra {
            <#code#>
        }
}


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





