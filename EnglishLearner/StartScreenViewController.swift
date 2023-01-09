//
//  ViewController.swift
//  EnglishLearner
//
//  Created by g.semshchikov on 09.01.2023.
//

import UIKit

class StartScreenViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func buttonPressed() {
        performSegue(withIdentifier: "showDetails", sender: nil)
    }
}

