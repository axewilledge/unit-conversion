//
//  FirstViewController.swift
//  Unit conversion
//
//  Created by Anjana S Porawagama on 8/14/2561 BE.
//  Copyright © 2561 BE Porawagama A. S. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var gram: UITextField!
    @IBOutlet weak var kilogram: UITextField!
    @IBOutlet weak var pound: UITextField!
    @IBOutlet weak var ounce: UITextField!
    var gramValue = 0.0;
    var kiloValue = 0.0;
    var poundValue = 0.0;
    var ounceValue = 0.0;
    
    
    @IBAction func Grams(_ sender: UITextField) {
        gramValue = Double(gram.text!) ?? 0.0
        kiloValue = gramValue/1000
        poundValue = gramValue * 0.00220462
        ounceValue = poundValue * 16
        kilogram.text = String(kiloValue.rounded(toPlaces: 3))
        pound.text = String(poundValue.rounded(toPlaces: 5))
        ounce.text = String(ounceValue.rounded(toPlaces: 5))
    }
    
    @IBAction func kilograms(_ sender: UITextField) {
        kiloValue = Double(kilogram.text!) ?? 0.0
        gramValue = kiloValue  * 1000
        poundValue = gramValue * 0.00220462
        ounceValue = poundValue * 16
        gram.text = String(gramValue.rounded(toPlaces: 0))
        pound.text = String(poundValue.rounded(toPlaces: 5))
        ounce.text = String(ounceValue.rounded(toPlaces: 5))
    }
    
    @IBAction func pounds(_ sender: Any) {
        poundValue = Double(pound.text!) ?? 0.0
        gramValue = poundValue/0.00220462
        kiloValue = gramValue/1000
        ounceValue = poundValue * 16
        kilogram.text = String(kiloValue.rounded(toPlaces: 3))
        gram.text = String(gramValue.rounded(toPlaces: 0))
        ounce.text = String(ounceValue.rounded(toPlaces: 5))
    }
    @IBAction func ounces(_ sender: UITextField) {
        ounceValue = Double(ounce.text!) ?? 0.0
        gramValue = ounceValue/0.035274
        kiloValue = gramValue/1000
        poundValue = gramValue * 0.00220462
        kilogram.text = String(kiloValue.rounded(toPlaces: 3))
        gram.text = String(gramValue.rounded(toPlaces: 0))
        pound.text = String(poundValue.rounded(toPlaces: 5))
    }
   
}

extension Double {
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

