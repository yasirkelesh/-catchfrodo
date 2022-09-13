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
    var random = Timer()
    
    var score = 0
    var counter = 0
    var HighScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        score = 0;
        TimeLabel.text = "Time \(counter)"
        ScoreLabel.text = "Score \(score)"

        
        let storedHighScore = UserDefaults.standard.object(forKey: "highscore")
        
        if storedHighScore == nil{
            HighScore = 0
            HighScoreLabel.text = "HighScore : \(self.HighScore)"
        }
        if let newScore = storedHighScore as? Int{
                HighScore = newScore
                HighScoreLabel.text = "HighScore : \(self.HighScore)"
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
        //Where is Frodo
        if counter >= 0{
            random = Timer.scheduledTimer(timeInterval: 0.6, target: self, selector: #selector(randomFunction), userInfo: nil, repeats: true)
        }
        
        
    }
    @objc func timerFunction(){
        TimeLabel.text = "Time: \(counter)"
        counter -= 1
        
        if self.score > self.HighScore{
            self.HighScore = self.score
            self.HighScoreLabel.text = "HighScore : \(self.HighScore)"
            UserDefaults.standard.set(self.HighScore, forKey: "highscore")
        }
        
        
        if counter == 0{
            timer.invalidate()
            TimeLabel.text = "Time's Over"
            let alert = UIAlertController(title: "Game Over!", message: "Game Over !", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Exit", style: UIAlertAction.Style.default) { [self] (UIAlertAction) in
                        print(" Exit button clicked")
                        
                        UserDefaults.standard.set(ScoreLabel.text!, forKey: "score")

                        exit(0)
                    }
            
            let RestartButton = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default){
                (UIAlertAction) in
                
                self.counter = 10
                self.score = 0;
                self.TimeLabel.text = "Time \(self.counter)"
                self.ScoreLabel.text = "Score \(self.score)"
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.timerFunction), userInfo: nil, repeats: true)
                self.random = Timer.scheduledTimer(timeInterval: 0.6, target: self, selector: #selector(self.randomFunction), userInfo: nil, repeats: true)
    
                
                
                
                
                
                
            }
            
                    alert.addAction(okButton)
                    alert.addAction(RestartButton)
                    self.present(alert, animated: true, completion: nil)
        }
    }
    @objc func randomFunction(){
        
        let randomInt = Int.random(in: 1..<9)
        Frodo2.image = UIImage(named: "beyaz")
        Frodo3.image = UIImage(named: "beyaz")
        Frodo4.image = UIImage(named: "beyaz")
        Frodo5.image = UIImage(named: "beyaz")
        Frodo6.image = UIImage(named: "beyaz")
        Frodo7.image = UIImage(named: "beyaz")
        Frodo8.image = UIImage(named: "beyaz")
        Frodo9.image = UIImage(named: "beyaz")
        Frodo1.image = UIImage(named: "beyaz")
        
        Frodo1.isUserInteractionEnabled = false
        Frodo2.isUserInteractionEnabled = false
        Frodo3.isUserInteractionEnabled = false
        Frodo4.isUserInteractionEnabled = false
        Frodo5.isUserInteractionEnabled = false
        Frodo6.isUserInteractionEnabled = false
        Frodo7.isUserInteractionEnabled = false
        Frodo8.isUserInteractionEnabled = false
        Frodo9.isUserInteractionEnabled = false
        
        if randomInt == 1{
            

            Frodo1.image = UIImage(named: "frodo")
            
            Frodo1.isUserInteractionEnabled = true

            let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(scorePic))
            Frodo1.addGestureRecognizer(gestureRecognizer)
     
 
      
        }
        if randomInt == 2{
            

            Frodo2.image = UIImage(named: "frodo")
            
            Frodo2.isUserInteractionEnabled = true

                let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(scorePic))
                Frodo2.addGestureRecognizer(gestureRecognizer)
        
 
        }
        if randomInt == 3{
            

            Frodo3.image = UIImage(named: "frodo")
            
            Frodo3.isUserInteractionEnabled = true

                let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(scorePic))
                Frodo3.addGestureRecognizer(gestureRecognizer)
        
  
        }
        if randomInt == 4{
            

            Frodo4.image = UIImage(named: "frodo")
            
            Frodo4.isUserInteractionEnabled = true
      
                let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(scorePic))
                Frodo4.addGestureRecognizer(gestureRecognizer)
  
  
        }
        if randomInt == 5{
            

            Frodo5.image = UIImage(named: "frodo")
            
            Frodo5.isUserInteractionEnabled = true
    
                let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(scorePic))
                Frodo5.addGestureRecognizer(gestureRecognizer)
       

        }
        if randomInt == 6{
            

            Frodo6.image = UIImage(named: "frodo")
            
            Frodo6.isUserInteractionEnabled = true
 
                let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(scorePic))
                Frodo6.addGestureRecognizer(gestureRecognizer)
     
     
        }
        if randomInt == 7{
            

            Frodo7.image = UIImage(named: "frodo")
            
            
            Frodo7.isUserInteractionEnabled = true
            let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(scorePic))
            Frodo7.addGestureRecognizer(gestureRecognizer)
                
        
            
        }
        if randomInt == 8{
            

            Frodo8.image = UIImage(named: "frodo")
            
            Frodo8.isUserInteractionEnabled = true

            let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(scorePic))
            Frodo8.addGestureRecognizer(gestureRecognizer)

               
            
            
        }
        if randomInt == 9{
            

            Frodo9.image = UIImage(named: "frodo")
            
            Frodo9.isUserInteractionEnabled = true

            let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(scorePic))
            Frodo9.addGestureRecognizer(gestureRecognizer)

      
                
           
          
        }
        
        
    }
    @objc func scorePic(){
        
        ScoreLabel.text = "Time: \(score)"
        score += 1
        
    }
}

