//
//  ExerciseViewController.swift
//  EnglishLearner
//
//  Created by g.semshchikov on 09.01.2023.
//

import UIKit

class ExerciseViewController: UIViewController {
    
    @IBOutlet var timerLabel: UILabel!
    
    var timer = Timer()
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: false)
    }
    
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
        timeString += String(format: "0%2d", seconds)
        return timeString
    }
}
