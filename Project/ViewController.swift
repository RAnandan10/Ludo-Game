//
//  ViewController.swift
//  Project
//
//  Created by Suresh Narasimha Nayak on 11/27/22.
//

import UIKit

class ViewController: UIViewController {
    
    var human1:Human = Human(id: "P1", name: "Player1", color:"green")
    
    @IBOutlet weak var dice: UIImageView!
    @IBOutlet weak var boardView: BoardView!
    
    let diceImage = ["one", "two", "three", "four", "five", "six"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        human1.initializeTokens()
        boardView.layout.players[0].tokens = human1.tokens
        
        dice.image = UIImage(named: "five")
        
        /* to click the button automatically
         rollDice((Any).self)
         */
            
        
    }

  
    
    @IBAction func rollDice(_ sender: Any) {
        var diceVal: Int = Int(arc4random_uniform(6))
        dice.image = UIImage(named:diceImage[diceVal])
        /*
         1. Ask the used which icon to move
         2. Check if iconm can be moved
         3. move the icon
         4. Trigger action on the target cell
         5
         */
    }

}

