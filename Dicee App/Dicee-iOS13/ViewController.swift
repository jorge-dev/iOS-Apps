//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   // Reference a UI element
    @IBOutlet weak var diceImageLeft: UIImageView!
    @IBOutlet weak var diceImageRight: UIImageView!
    
    
    
    @IBAction func rollButton(_ sender: UIButton) {
        let diceArray = [#imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    
        diceImageLeft.image = diceArray.randomElement()
        diceImageRight.image = diceArray.randomElement()
       
    }
    
}

