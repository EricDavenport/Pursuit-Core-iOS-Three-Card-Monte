//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var card1: UIButton!
    
    @IBOutlet weak var card2: UIButton!
    
    @IBOutlet weak var card3: UIButton!
    
    @IBOutlet weak var winLoseMessage: UILabel!
    
    var wins: Int = 0
    
    let imageArray = ["threeCard", "kingCard", "threeCard"]
    
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    

    @IBAction func flipCard(_ sender: UIButton) {
        
       let buttonArray = [card1, card2, card3]
        
         let randomImage = sender.setBackgroundImage(UIImage(named:"\(imageArray.randomElement() ?? "threeCard")"), for: UIControl.State.normal)
        
        
        let randomNumber = Int.random(in: 0...2)

        if sender.tag == randomNumber {
             sender.setBackgroundImage(UIImage(named:"kingCard"), for: UIControl.State.normal)
            wins += 1
            winLoseMessage.text = "YOU WIN!!!\n \(wins) wins"
            
            for button in buttonArray {
                button?.isEnabled = false
            }
            
        } else {
            sender.setBackgroundImage(UIImage(named: "threeCard"), for: UIControl.State.normal)
            winLoseMessage.text = "YOU LOSE!!!"
            
            for button in buttonArray {
                button?.isEnabled = false
            }
        }
        
        }

    @IBAction func newGame(_ sender: Any) {
       
        let buttonArray = [card1, card2, card3]
        
        card1.setBackgroundImage(UIImage(named: "cardBackRed"), for: UIControl.State.normal)
        card2.setBackgroundImage(UIImage(named: "cardBackRed"), for: UIControl.State.normal)
        card3.setBackgroundImage(UIImage(named: "cardBackRed"), for: UIControl.State.normal)
        
        for button in buttonArray {
            button?.isEnabled = true
        }
    }
}

