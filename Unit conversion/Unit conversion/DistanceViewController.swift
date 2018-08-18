//
//  DistanceViewController.swift
//  Unit conversion
//
//  Created by Anjana S Porawagama on 8/15/2561 BE.
//  Copyright © 2561 BE Porawagama A. S. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {
    
    
    @IBOutlet weak var metreField: UITextField!
    @IBOutlet weak var footField: UITextField!
    @IBOutlet weak var yardField: UITextField!
    @IBOutlet weak var kilometreField: UITextField!
    @IBOutlet weak var mileField: UITextField!
    
    let conversion = UnitConversion()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTapped() //Hide the keyboard in tap events in the body
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func metre(_ sender: UITextField) {
        self.conversion.generateDistance(key: ConstantValues.DistanceKeys.metre, value: metreField.text!)
        footField.text =  self.conversion.getFoot()
        yardField.text = self.conversion.getYard()
        kilometreField.text = self.conversion.getKilometre()
        mileField.text = self.conversion.getMile()
    }
    
    @IBAction func foot(_ sender: UITextField) {
        self.conversion.generateDistance(key: ConstantValues.DistanceKeys.foot, value: footField.text!)
        metreField.text = self.conversion.getMetre()
        yardField.text = self.conversion.getYard()
        kilometreField.text = self.conversion.getKilometre()
        mileField.text = self.conversion.getMile()
    }
    
    @IBAction func yard(_ sender: UITextField) {
        self.conversion.generateDistance(key: ConstantValues.DistanceKeys.yard, value: yardField.text!)
        footField.text = self.conversion.getFoot()
        metreField.text = self.conversion.getMetre()
        kilometreField.text = self.conversion.getKilometre()
        mileField.text = self.conversion.getMile()
    }
    
    @IBAction func kilometre(_ sender: UITextField) {
        self.conversion.generateDistance(key: ConstantValues.DistanceKeys.kilometre, value: kilometreField.text!)
        footField.text = self.conversion.getFoot()
        yardField.text = self.conversion.getYard()
        metreField.text = self.conversion.getMetre()
        mileField.text = self.conversion.getMile()
    }
    
    @IBAction func mile(_ sender: UITextField) {
        self.conversion.generateDistance(key: ConstantValues.DistanceKeys.mile, value: mileField.text!)
        footField.text = self.conversion.getFoot()
        yardField.text = self.conversion.getYard()
        kilometreField.text = self.conversion.getKilometre()
        metreField.text = self.conversion.getMetre()
    }
    
}
