//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Jorge Avila on 2022-07-09.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue : String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var AdviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILabel.text = bmiValue
        AdviceLabel.text = advice
        view.backgroundColor = color
        

    }

    @IBAction func RecalculatePressed(_ sender: UIButton) {
        dismiss(animated: true,completion: nil)
    }
    
    
    
    
}
