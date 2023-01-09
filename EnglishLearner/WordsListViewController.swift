//
//  WordsListViewController.swift
//  EnglishLearner
//
//  Created by g.semshchikov on 09.01.2023.
//

import UIKit

class WordsListViewController: UIViewController {

    @IBOutlet var wordsLabels: [UILabel]!
    
    private let wordsList = WordsSet.first.definition
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for (label, word) in zip(wordsLabels, wordsList) {
            label.text = word
        }
    }
}
