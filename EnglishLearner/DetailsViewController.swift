//
//  DetailsViewController.swift
//  EnglishLearner
//
//  Created by g.semshchikov on 09.01.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func showWordsButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "showWords", sender: nil)
    }
    
    
    @IBAction func startExerciseButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "exercise", sender: nil)
    }
    
}
