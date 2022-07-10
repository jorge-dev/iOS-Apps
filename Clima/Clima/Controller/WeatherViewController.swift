//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var SearchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SearchTextField.delegate = self
    }
    
    @IBAction func searchedPressed(_ sender: UIButton) {
        SearchTextField.endEditing(true)
        print(SearchTextField.text!)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(SearchTextField.text!)
        SearchTextField.endEditing(true)
        
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != ""{
            textField.placeholder = "Search"
            return true
        }
        else{
            textField.placeholder = "Please enter a city"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
//        let text = SearchTextField.text
        SearchTextField.text = ""
    }
}

