//
//  WordsListViewController.swift
//  EnglishLearner
//
//  Created by g.semshchikov on 09.01.2023.
//

import UIKit

class WordsListViewController: UIViewController {

    @IBOutlet var wordsLabels: [UILabel]!
    
    var setChosen: WordsSet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let wordsList = setChosen.definition
        for (label, word) in zip(wordsLabels, wordsList) {
            label.text = word
        }
    }
}
