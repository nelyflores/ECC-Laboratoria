//
//  ViewController.swift
//  IntrotoXcode
//
//  Created by Apple Device 7 on 10/5/19.
//  Copyright © 2019 NelyFlores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.backgroundColor = UIColor.red
     
    }


    @IBAction func ButtonClicked(_ sender: UIButton) {
        myView.backgroundColor = .yellow
      
    }
}

