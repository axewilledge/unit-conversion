//
//  FirstViewController.swift
//  Unit conversion
//
//  Created by Anjana S Porawagama on 8/14/2561 BE.
//  Copyright © 2561 BE Porawagama A. S. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

    @IBOutlet weak var gram: UITextField!
    @IBOutlet weak var kilogram: UITextField!
    @IBOutlet weak var pound: UITextField!
    @IBOutlet weak var ounce: UITextField!
    
    let conversion = UnitConversion()
    
    @IBOutlet weak var clearBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTapped() //Hide the keyboard in tap events in the body
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func clearFields(_ sender: UIButton) {
        gram.text = ""
        kilogram.text = ""
        pound.text = ""
        ounce.text = ""
    }
    
    @IBAction func Grams(_ sender: UITextField) {
        self.conversion.generateWeights(key: ConstantValues.WeightKeys.gram, value: gram.text!)
        kilogram.text = self.conversion.getKilo()
        pound.text = self.conversion.getPound()
        ounce.text = self.conversion.getOunce()
    }
    
    @IBAction func kilograms(_ sender: UITextField) {
        self.conversion.generateWeights(key: ConstantValues.WeightKeys.kilo, value: kilogram.text!)
        gram.text = self.conversion.getGram()
        pound.text = self.conversion.getPound()
        ounce.text = self.conversion.getOunce()
    }
    
    @IBAction func pounds(_ sender: Any) {
        self.conversion.generateWeights(key: ConstantValues.WeightKeys.pound, value: pound.text!)
        kilogram.text = self.conversion.getKilo()
        gram.text = self.conversion.getGram()
        ounce.text = self.conversion.getOunce()
    }
    
    @IBAction func ounces(_ sender: UITextField) {
        self.conversion.generateWeights(key: ConstantValues.WeightKeys.ounce, value: ounce.text!)
        kilogram.text = self.conversion.getKilo()
        gram.text = self.conversion.getGram()
        pound.text = self.conversion.getPound()
    }
   
}

