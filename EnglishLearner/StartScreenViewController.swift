//
//  ViewController.swift
//  EnglishLearner
//
//  Created by g.semshchikov on 09.01.2023.
//

import UIKit

class StartScreenViewController: UIViewController {

    var setChosen: WordsSet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            let controller = segue.destination as! DetailsViewController
            controller.setChosen = setChosen
        }
    }
    
    @IBAction func firstButtonPressed() {
        setChosen = .first
        performSegue(withIdentifier: "showDetails", sender: nil)
    }
    
    @IBAction func secondButtonPressed() {
        setChosen = .second
        performSegue(withIdentifier: "showDetails", sender: nil)
    }
    
    @IBAction func thirdButtonPressed() {
        setChosen = .third
        performSegue(withIdentifier: "showDetails", sender: nil)
    }
    
    @IBAction func fourthButtonPressed() {
        setChosen = .fourth
        performSegue(withIdentifier: "showDetails", sender: nil)
    }
    
    @IBAction func fifthButtonPressed() {
        setChosen = .fifth
        performSegue(withIdentifier: "showDetails", sender: nil)
    }
    
    @IBAction func sixthButtonPressed() {
        setChosen = .sixth
        performSegue(withIdentifier: "showDetails", sender: nil)
    }
    
    @IBAction func seventhButtonPressed() {
        setChosen = .seventh
        performSegue(withIdentifier: "showDetails", sender: nil)
    }
    
    @IBAction func eighthButtonPressed() {
        setChosen = .eighth
        performSegue(withIdentifier: "showDetails", sender: nil)
    }
    
    @IBAction func ninthButtonPressed() {
        setChosen = .ninth
        performSegue(withIdentifier: "showDetails", sender: nil)
    }
}

