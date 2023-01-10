//
//  ExerciseViewController.swift
//  EnglishLearner
//
//  Created by g.semshchikov on 09.01.2023.
//

import UIKit

class ExerciseViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet var timerLabel: UILabel!
    @IBOutlet var correctLabel: UILabel!
    @IBOutlet var wrongLabel: UILabel!
    @IBOutlet var wordLabel: UILabel!
    
    var correctCounter = 0
    var wrongCounter = 0
    
    // MARK: - Words list variables
    var setChosen: WordsSet!
    var queue = Queue<String>()
    
    // MARK: - Timer variables
    var timer = Timer()
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let wordsList = setChosen.definition
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)
        for word in wordsList {
            queue.enqueue(word)
        }
        wordLabel.text = queue.dequeue()
    }
    
    // MARK: - Actions
    @IBAction func rememberButtonPressed() {
        if !queue.isEmpty() {
            correctCounter += 1
            correctLabel.text = "✅ : \(correctCounter)"
            wordLabel.text = queue.dequeue()
        } else {
            wordLabel.text = "🎉"
            wordLabel.font = UIFont(name: wordLabel.font.fontName, size: 80)
            timer.invalidate()
        }
    }
    
    
    @IBAction func dontRememberButtonPressed() {
        if !queue.isEmpty() {
            wrongCounter += 1
            wrongLabel.text = "❌ : \(wrongCounter)"
            wordLabel.text = queue.dequeue()
        } else {
            wordLabel.text = "🎉"
            wordLabel.font = UIFont(name: wordLabel.font.fontName, size: 80)
            timer.invalidate()
        }
    }
    
    // MARK: - Timer staff
    @objc func timerCounter() -> Void {
        count = count + 1
        let time = secondsToMinutesSeconds(seconds: count)
        let timeString = makeTimeString(minutes: time.0, seconds: time.1)
        timerLabel.text = timeString
    }
    
    func secondsToMinutesSeconds(seconds: Int) -> (Int, Int) {
        return (((seconds % 3600) / 60), (seconds % 3600) % 60)
    }
    
    func makeTimeString(minutes: Int, seconds: Int) -> String {
        var timeString = ""
        timeString += String(format: "0%2d", minutes)
        timeString += " : "
        timeString += String(format: "%2d", seconds)
        return timeString
    }
}
