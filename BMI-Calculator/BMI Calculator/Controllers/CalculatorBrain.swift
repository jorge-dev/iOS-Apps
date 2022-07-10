//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Jorge Avila on 2022-07-09.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct Calculatorbrain {
    
    private var bmi: Bmi?
    
    
    mutating func calculateBmi(height: Float, weight: Float) -> Void {
        let bmiCalc = weight/pow(height, 2)
        bmi = getBmiCategory(value: bmiCalc)
        
    }
    
    func getBmiValue() -> String{
        let bmiCalc = String(format: "%.2f", bmi?.value ?? 0.0)
        return bmiCalc 
    }
    
    func getBmiAdvice() -> String{
        return bmi?.advice ?? "No Advice"
    }
    
    func getBmiColor() -> UIColor{
        return bmi?.color ?? UIColor.clear
    }
    
    private func getBmiCategory(value: Float) -> Bmi {
        if value < 18.5 {
            return Bmi(value: value, advice: "Your underweight! Eat more pizza please", color: UIColor.blue)
        }
        else if value < 24.9 {
            return Bmi(value: value, advice: "Your weight is normal! Good Job", color: UIColor.green)
        }
        else {
            return Bmi(value: value, advice: "Your Overweight! Please STOP eating pizza", color: UIColor.red)
            
        }
    }
            
}
