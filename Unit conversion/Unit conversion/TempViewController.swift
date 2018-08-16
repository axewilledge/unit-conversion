//
//  SecondViewController.swift
//  Unit conversion
//
//  Created by Anjana S Porawagama on 8/14/2561 BE.
//  Copyright © 2561 BE Porawagama A. S. All rights reserved.
//

import UIKit

class TempViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var celsiusField: UITextField!
    @IBOutlet weak var fahrenheitField: UITextField!
    @IBOutlet weak var kelvinField: UITextField!
    var celsiusValue = 0.0
    var fahrenheitValue = 0.0
    var kelvinValue = 0.0
    
    @IBAction func celsius(_ sender: Any) {
        celsiusValue = Double(celsiusField.text!) ?? 0.0
        fahrenheitValue = (celsiusValue * (9/5)) + 32
        kelvinValue = celsiusValue + 273.15
        fahrenheitField.text = String(fahrenheitValue.rounded(toPlaces: 3))
        kelvinField.text = String(kelvinValue.rounded(toPlaces: 3))
        
    }
    @IBAction func fahrenheit(_ sender: Any) {
        fahrenheitValue = Double(fahrenheitField.text!) ?? 0.0
        celsiusValue = (fahrenheitValue - 32 ) * (5/9)
        kelvinValue = celsiusValue + 273.15
        celsiusField.text = String(celsiusValue.rounded(toPlaces: 3))
        kelvinField.text = String(kelvinValue.rounded(toPlaces: 3))
    }
    @IBAction func kelvin(_ sender: UITextField) {
        kelvinValue = Double(kelvinField.text!) ?? 0.0
        celsiusValue = kelvinValue - 273.15
        fahrenheitValue = (celsiusValue * (9/5)) + 32
        fahrenheitField.text = String(fahrenheitValue.rounded(toPlaces: 3))
        celsiusField.text = String(celsiusValue.rounded(toPlaces: 3))
    }
    
}

