//
//  SpeedViewController.swift
//  Unit conversion
//
//  Created by Anjana S Porawagama on 8/15/2561 BE.
//  Copyright © 2561 BE Porawagama A. S. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {
    
    
    @IBOutlet weak var mpsField: UITextField!
    @IBOutlet weak var fpmField: UITextField!
    @IBOutlet weak var kphField: UITextField!
    @IBOutlet weak var mphField: UITextField!
    
    let conversion = UnitConversion()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mps(_ sender: UITextField) {
        self.conversion.generateSpeeds(key: ConstantValues.SpeedKeys.mps, value: mpsField.text!)
        fpmField.text =  self.conversion.getFpm()
        kphField.text = self.conversion.getKph()
        mphField.text = self.conversion.getMph()
    }
    
    @IBAction func fpm(_ sender: Any) {
       self.conversion.generateSpeeds(key: ConstantValues.SpeedKeys.fpm, value: fpmField.text!)
        mpsField.text = self.conversion.getMps()
        kphField.text = self.conversion.getKph()
        mphField.text = self.conversion.getMph()
    }
    
    @IBAction func kph(_ sender: UITextField) {
        self.conversion.generateSpeeds(key: ConstantValues.SpeedKeys.kph, value: kphField.text!)
        fpmField.text = self.conversion.getFpm()
        mpsField.text = self.conversion.getMps()
        mphField.text = self.conversion.getMph()
    }
    
    @IBAction func mph(_ sender: UITextField) {
        self.conversion.generateSpeeds(key: ConstantValues.SpeedKeys.mph, value: mphField.text!)
        fpmField.text = self.conversion.getFpm()
        mpsField.text = self.conversion.getMps()
        kphField.text = self.conversion.getKph()
    }
    
}
