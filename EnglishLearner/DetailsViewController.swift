//
//  DetailsViewController.swift
//  EnglishLearner
//
//  Created by g.semshchikov on 09.01.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var setChosen: WordsSet!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWords" {
            let controller = segue.destination as! WordsListViewController
            controller.setChosen = setChosen
        }
        
        if segue.identifier == "exercise" {
            let controller = segue.destination as! ExerciseViewController
            controller.setChosen = setChosen
        }
    }

    @IBAction func showWordsButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "showWords", sender: nil)
    }
    
    
    @IBAction func startExerciseButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "exercise", sender: nil)
    }
    
}
