//
//  SecondViewController.swift
//  Unit conversion
//
//  Created by Anjana S Porawagama on 8/14/2561 BE.
//  Copyright © 2561 BE Porawagama A. S. All rights reserved.
//

import UIKit

class TempViewController: UIViewController {

    @IBOutlet weak var celsiusField: UITextField!
    @IBOutlet weak var fahrenheitField: UITextField!
    @IBOutlet weak var kelvinField: UITextField!
    
    let conversion = UnitConversion()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTapped() //Hide the keyboard in tap events in the body
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func celsius(_ sender: Any) {
        self.conversion.generateTemp(key: .celsius, value: celsiusField.text!)
        fahrenheitField.text = self.conversion.getFahrenheit()
        kelvinField.text = self.conversion.getKelvin()
    }
    
    @IBAction func fahrenheit(_ sender: Any) {
        self.conversion.generateTemp(key: .fahrenheit, value: fahrenheitField.text!)
        celsiusField.text = self.conversion.getCelsius()
        kelvinField.text = self.conversion.getKelvin()
    }
    
    @IBAction func kelvin(_ sender: UITextField) {
       self.conversion.generateTemp(key: .kelvin, value: kelvinField.text!)
        fahrenheitField.text = self.conversion.getFahrenheit()
        celsiusField.text = self.conversion.getCelsius()
    }
    
}

