//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var winLoseMessage: UILabel!
    
    var wins: Int = 0
    
    let imageArray = ["threeCard", "kingCard", "threeCard"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func newGame(_ sender: UIButton) {
        
    }
    
    
    

    @IBAction func flipCard(_ sender: UIButton) {
        
        sender.setBackgroundImage(UIImage(named:"\(imageArray.randomElement() ?? "threeCard")"), for: UIControl.State.normal)
        
        let randomNumber = Int.random(in: 0...2)
//        let tag = sender.tag
//            switch tag {
//            case 1:
//                sender.setBackgroundImage(UIImage(named:"\(imageArray.randomElement() ?? "threeCard")"), for: UIControl.State.normal)
//            case 2:
//                sender.setBackgroundImage(UIImage(named:"\(imageArray.randomElement() ?? "threeCard")"), for: UIControl.State.normal)
//            case 3:
//                sender.setBackgroundImage(UIImage(named:"\(imageArray.randomElement() ?? "threeCard")"), for: UIControl.State.normal)
//            case 4:
//                sender.setBackgroundImage(UIImage(named:"\(imageArray.randomElement() ?? "threeCard")"), for: UIControl.State.normal)
//            case 5:
//                sender.setBackgroundImage(UIImage(named:"\(imageArray.randomElement() ?? "threeCard")"), for: UIControl.State.normal)
//            default:
//                sender.setBackgroundImage(UIImage(named:"\(imageArray.randomElement() ?? "threeCard")"), for: UIControl.State.normal)
//            }
        
        if sender.tag == randomNumber {
             sender.setBackgroundImage(UIImage(named:"kingCard"), for: UIControl.State.normal)
            wins += 1
            winLoseMessage.text = "YOU WIN!!! \(wins) wins"
            
        } else {
            sender.setBackgroundImage(UIImage(named: "threeCard"), for: UIControl.State.normal)
            winLoseMessage.text = "YOU LOSE!!!"
        }
        
        
            
        
        
        
    }
    
}

