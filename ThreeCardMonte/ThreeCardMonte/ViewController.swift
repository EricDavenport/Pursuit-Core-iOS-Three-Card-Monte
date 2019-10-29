//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameOn: Bool = true
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    
      @IBOutlet weak var threeCardMonteButton: UILabel!
        
    }

    

    @IBOutlet weak var winLoseDisplay: UILabel!
    
     let cardImages = ["threeCard", "threeCard", "kingCard"]
    
    
    
    @IBOutlet var cardCollection: [UIButton]!
   
    
    @IBAction func winningCard(_ sender: UIButton) {
        
        let randomCard = cardImages.randomElement() ?? "threeCard"
        repeat{
            
        
        switch sender.tag {
        case 0:
            sender.setBackgroundImage(UIImage(named: "\(cardImages.randomElement() ?? "threeCard")") , for: UIControl.State.normal)
            gameOn = false

            if randomCard == "kingCard"{
                winLoseDisplay.text = "You Win!!"
            } else if randomCard == "threeCard" {
                winLoseDisplay.text = "You Lose!!"
            }
        case 1:
            sender.setBackgroundImage(UIImage(named:"\(cardImages.randomElement() ?? "threeCard")"), for: UIControl.State.normal)
            gameOn = false

            if randomCard == "kingCard"{
                winLoseDisplay.text = "You Win!!"
            } else if randomCard == "threeCard" {
                winLoseDisplay.text = "You Lose!!"
            }
        case 2:
        sender.setBackgroundImage(UIImage(named:"\(cardImages.randomElement() ?? "threeCard")"), for: UIControl.State.normal)
            gameOn = false

            if randomCard == "kingCard"{
                winLoseDisplay.text = "You Win!!"
            } else if randomCard == "threeCard" {
                winLoseDisplay.text = "You Lose!!"
            }
            
        case 3:
        sender.setBackgroundImage(UIImage(named:"\(cardImages.randomElement() ?? "threeCard")"), for: UIControl.State.normal)
            gameOn = false

            if randomCard == "kingCard"{
                winLoseDisplay.text = "You Win!!"
            } else if randomCard == "threeCard" {
                winLoseDisplay.text = "You Lose!!"
            }
            gameOn = false
        case 4:
        sender.setBackgroundImage(UIImage(named: "\(cardImages.randomElement() ?? "threeCard")"), for: UIControl.State.normal)
            gameOn = false
            if randomCard == "kingCard"{
                winLoseDisplay.text = "You Win!!"
            } else if randomCard == "threeCard" {
                winLoseDisplay.text = "You Lose!!"
            }
            
        default:
        sender.setBackgroundImage(UIImage(named: "\(cardImages.randomElement() ?? "threeCard")") , for: UIControl.State.normal)
            gameOn = false
            if randomCard == "kingCard"{
                winLoseDisplay.text = "You Win!!"
            } else if randomCard == "threeCard" {
                winLoseDisplay.text = "You Lose!!"
            }
            
            
            }
        
        } while gameOn == true
      
        
        
}
  
