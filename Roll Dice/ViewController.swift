//
//  ViewController.swift
//  Roll Dice
//
//  Created by Admin on 3/19/18.
//  Copyright © 2018 Matthew Heinrichs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImage: UIImageView!
    
    @IBOutlet weak var diceLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func rolledDice(_ sender: Any) {
        
        let min : UInt32 = 1
        let max : UInt32 = 7
        
        let randomNumber = arc4random_uniform(max-min) + 1
        diceLabel.text = String("You Rolled \(randomNumber)")
        
        diceImage.image = UIImage(named: "Dice\(randomNumber)")
    }
    


}

