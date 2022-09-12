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
    //frodo
    @IBOutlet weak var Frodo1: UIImageView!
    @IBOutlet weak var Frodo2: UIImageView!
    @IBOutlet weak var Frodo3: UIImageView!
    @IBOutlet weak var Frodo4: UIImageView!
    @IBOutlet weak var Frodo5: UIImageView!
    @IBOutlet weak var Frodo6: UIImageView!
    @IBOutlet weak var Frodo7: UIImageView!
    @IBOutlet weak var Frodo8: UIImageView!
    @IBOutlet weak var Frodo9: UIImageView!
    
    var timer = Timer()
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        TimeLabel.text = "Time \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
        
        
        //Where is Frodo
        /*while(counter >= 0){
            let randomInt = Int.random(in: 1..<9)
            if randomInt == 1{
                Frodo1.image = UIImage(named: "frodo")
                Frodo2.image = UIImage(named: "beyaz")
                Frodo3.image = UIImage(named: "beyaz")
                Frodo4.image = UIImage(named: "beyaz")
                Frodo5.image = UIImage(named: "beyaz")
                Frodo6.image = UIImage(named: "beyaz")
                Frodo7.image = UIImage(named: "beyaz")
                Frodo8.image = UIImage(named: "beyaz")
                Frodo9.image = UIImage(named: "beyaz")
            }
            if randomInt == 2{
                Frodo2.image = UIImage(named: "frodo")
                Frodo1.image = UIImage(named: "beyaz")
                Frodo3.image = UIImage(named: "beyaz")
                Frodo4.image = UIImage(named: "beyaz")
                Frodo5.image = UIImage(named: "beyaz")
                Frodo6.image = UIImage(named: "beyaz")
                Frodo7.image = UIImage(named: "beyaz")
                Frodo8.image = UIImage(named: "beyaz")
                Frodo9.image = UIImage(named: "beyaz")
            }
            if randomInt == 3{
                Frodo3.image = UIImage(named: "frodo")
                Frodo1.image = UIImage(named: "beyaz")
                Frodo2.image = UIImage(named: "beyaz")
                Frodo4.image = UIImage(named: "beyaz")
                Frodo5.image = UIImage(named: "beyaz")
                Frodo6.image = UIImage(named: "beyaz")
                Frodo7.image = UIImage(named: "beyaz")
                Frodo8.image = UIImage(named: "beyaz")
                Frodo9.image = UIImage(named: "beyaz")
            }
            if randomInt == 4{
                Frodo4.image = UIImage(named: "frodo")
                Frodo1.image = UIImage(named: "beyaz")
                Frodo3.image = UIImage(named: "beyaz")
                Frodo2.image = UIImage(named: "beyaz")
                Frodo5.image = UIImage(named: "beyaz")
                Frodo6.image = UIImage(named: "beyaz")
                Frodo7.image = UIImage(named: "beyaz")
                Frodo8.image = UIImage(named: "beyaz")
                Frodo9.image = UIImage(named: "beyaz")
            }
            if randomInt == 5{
                Frodo5.image = UIImage(named: "frodo")
                Frodo1.image = UIImage(named: "beyaz")
                Frodo3.image = UIImage(named: "beyaz")
                Frodo4.image = UIImage(named: "beyaz")
                Frodo2.image = UIImage(named: "beyaz")
                Frodo6.image = UIImage(named: "beyaz")
                Frodo7.image = UIImage(named: "beyaz")
                Frodo8.image = UIImage(named: "beyaz")
                Frodo9.image = UIImage(named: "beyaz")
            }
            if randomInt == 6{
                Frodo6.image = UIImage(named: "frodo")
                Frodo1.image = UIImage(named: "beyaz")
                Frodo3.image = UIImage(named: "beyaz")
                Frodo4.image = UIImage(named: "beyaz")
                Frodo2.image = UIImage(named: "beyaz")
                Frodo5.image = UIImage(named: "beyaz")
                Frodo7.image = UIImage(named: "beyaz")
                Frodo8.image = UIImage(named: "beyaz")
                Frodo9.image = UIImage(named: "beyaz")
            }
            if randomInt == 7{
                Frodo7.image = UIImage(named: "frodo")
                Frodo1.image = UIImage(named: "beyaz")
                Frodo3.image = UIImage(named: "beyaz")
                Frodo4.image = UIImage(named: "beyaz")
                Frodo2.image = UIImage(named: "beyaz")
                Frodo6.image = UIImage(named: "beyaz")
                Frodo5.image = UIImage(named: "beyaz")
                Frodo8.image = UIImage(named: "beyaz")
                Frodo9.image = UIImage(named: "beyaz")
            }
            if randomInt == 8{
                Frodo8.image = UIImage(named: "frodo")
                Frodo1.image = UIImage(named: "beyaz")
                Frodo3.image = UIImage(named: "beyaz")
                Frodo4.image = UIImage(named: "beyaz")
                Frodo2.image = UIImage(named: "beyaz")
                Frodo6.image = UIImage(named: "beyaz")
                Frodo7.image = UIImage(named: "beyaz")
                Frodo5.image = UIImage(named: "beyaz")
                Frodo9.image = UIImage(named: "beyaz")
            }
            if randomInt == 9{
                Frodo9.image = UIImage(named: "frodo")
                Frodo1.image = UIImage(named: "beyaz")
                Frodo3.image = UIImage(named: "beyaz")
                Frodo4.image = UIImage(named: "beyaz")
                Frodo2.image = UIImage(named: "beyaz")
                Frodo6.image = UIImage(named: "beyaz")
                Frodo7.image = UIImage(named: "beyaz")
                Frodo8.image = UIImage(named: "beyaz")
                Frodo5.image = UIImage(named: "beyaz")
            }
            //sleep(100);
            
        }*/
        
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
