//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var HeightValue: UILabel!
    
    @IBOutlet weak var WeightValue: UILabel!
    @IBOutlet weak var HeightSliderValue: UISlider!
    @IBOutlet weak var WeightSliderValue: UISlider!
    
    var calculatorBrain = Calculatorbrain()
    
    var bmiCalc: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func HeightSlider(_ sender: UISlider) {
        let value: Float = round(sender.value * 100)/100
        HeightValue.text = String(value) + "m"
        
    }
    
    @IBAction func WeightSlider(_ sender: UISlider) {
        let value  = Int(sender.value)
        WeightValue.text = String(value) + "Kg"
        
        
    }
    @IBAction func CalculateButton(_ sender: UIButton) {
        let height = HeightSliderValue.value
        let weight = WeightSliderValue.value
        calculatorBrain.calculateBmi(height: height,weight: weight)
        
        self.performSegue(withIdentifier: "goToResulsts", sender: self)
        print(calculatorBrain.getBmiValue())
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResulsts" {
            let destinationVC =  segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.advice = calculatorBrain.getBmiAdvice()
            destinationVC.color = calculatorBrain.getBmiColor()
        }
    }
    
}

