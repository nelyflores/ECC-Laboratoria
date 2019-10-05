//
//  ViewController.swift
//  RPS
//
//  Created by Apple Device 7 on 10/5/19.
//  Copyright © 2019 NelyFlores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var IconResult: UILabel!
    @IBOutlet weak var LabeTitle: UILabel!
    
    @IBAction func scissorbutton(_ sender: UIButton) {
    }
    @IBAction func paperbutton(_ sender: UIButton) {
    }
    @IBAction func rockbutton(_ sender: UIButton) {
        let computerSign = randomSign()
        print(computerSign.emojis)
        let rock = Sign.Piedra
        let result = rock.giveMeResults(computerSign)
        print("El resultado es \(result)")
        determeneAppState(result: result)
    }
    func determeneAppState( result: Gamestate){
        switch result {
        case .Win:
            view.backgroundColor = .green
        case .Lose:
            view.backgroundColor = .red
        default:
            view.backgroundColor = .yellow
       
    }
    }
    @IBAction func playagain(_ sender: UIButton) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

