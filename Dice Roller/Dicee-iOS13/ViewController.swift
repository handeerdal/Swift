//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let imageArray = [UIImage(named: "DiceOne"),UIImage(named: "DiceTwo"),UIImage(named: "DiceThree"),UIImage(named: "DiceFour"),UIImage(named: "DiceFive"),UIImage(named: "DiceSix")]
        
        
        diceImageView1.image = imageArray[Int.random(in: 0...5)]
        
        /*[UIImage(named: "DiceOne"),UIImage(named: "DiceTwo"),UIImage(named: "DiceThree"),UIImage(named: "DiceFour"),UIImage(named: "DiceFive"),UIImage(named: "DiceSix")][Int .random(in: 0...5)]*/

        


        diceImageView2.image = imageArray.randomElement() as! UIImage
        
        /*[UIImage(named: "DiceOne"),UIImage(named: "DiceTwo"),UIImage(named: "DiceThree"),UIImage(named: "DiceFour"),UIImage(named: "DiceFive"),UIImage(named: "DiceSix")][Int .random(in: 0...5)]*/

        

        
    }
    
}

