//
//  ViewController.swift
//  FrodoyuYakala
//
//  Created by Muhammed yasir Keles on 9/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TimeLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var HighScoreLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        TimeLabel.text = "Time \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    @objc func timerFunction(){
        TimeLabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0{
            timer.invalidate()
            TimeLabel.text = "Time's Over"
            let alert = UIAlertController(title: "Game Over!", message: "Game Over !", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
                        print(" ok button clicked")
                        self.HighScoreLabel.text = "100"
                    }
            
            let RestartButton = UIAlertAction(title: "Restart", style: UIAlertAction.Style.default){
                (UIAlertAction) in
                self.viewDidLoad()
            }
            
                    alert.addAction(okButton)
                    alert.addAction(RestartButton)
                    self.present(alert, animated: true, completion: nil)
        }
    }

}

