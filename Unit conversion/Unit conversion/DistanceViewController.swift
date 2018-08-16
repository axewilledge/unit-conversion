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
    var metreValue = 0.0
    var footValue = 0.0
    var yardValue = 0.0
    var kilometre = 0.0
    var mileValue = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func metre(_ sender: UITextField) {
        metreValue = Double(metreField.text!) ?? 0.0
        footValue = metreValue * 3.28
        yardValue = metreValue * 1.09361
        kilometre = metreValue * 0.001
        mileValue = metreValue * 0.000621371
        footField.text = String(footValue.rounded(toPlaces: 3))
        yardField.text = String(yardValue.rounded(toPlaces: 3))
        kilometreField.text = String(kilometre.rounded(toPlaces: 3))
        mileField.text = String(mileValue.rounded(toPlaces: 3))
    }
    
    @IBAction func foot(_ sender: UITextField) {
        footValue = Double(footField.text!) ?? 0.0
        metreValue = footValue * 0.3048
        yardValue = metreValue * 1.09361
        kilometre = metreValue * 0.001
        mileValue = metreValue * 0.000621371
        metreField.text = String(metreValue.rounded(toPlaces: 3))
        yardField.text = String(yardValue.rounded(toPlaces: 3))
        kilometreField.text = String(kilometre.rounded(toPlaces: 3))
        mileField.text = String(mileValue.rounded(toPlaces: 3))
    }
    
    @IBAction func yard(_ sender: UITextField) {
        yardValue = Double(yardField.text!) ?? 0.0
        metreValue = yardValue * 0.9144
        footValue = metreValue * 3.28
        kilometre = metreValue * 0.001
        mileValue = metreValue * 0.000621371
        footField.text = String(footValue.rounded(toPlaces: 3))
        metreField.text = String(metreValue.rounded(toPlaces: 3))
        kilometreField.text = String(kilometre.rounded(toPlaces: 3))
        mileField.text = String(mileValue.rounded(toPlaces: 3))
    }
    @IBAction func kilometre(_ sender: UITextField) {
        kilometre = Double(kilometreField.text!) ?? 0.0
        metreValue = kilometre * 1000
        footValue = metreValue * 3.28
        yardValue = metreValue * 1.09361
        mileValue = metreValue * 0.000621371
        footField.text = String(footValue.rounded(toPlaces: 3))
        yardField.text = String(yardValue.rounded(toPlaces: 3))
        metreField.text = String(metreValue.rounded(toPlaces: 3))
        mileField.text = String(mileValue.rounded(toPlaces: 3))
    }
    @IBAction func mile(_ sender: UITextField) {
        mileValue = Double(mileField.text!) ?? 0.0
        metreValue = mileValue * 1609.34
        footValue = metreValue * 3.28
        yardValue = metreValue * 1.09361
        kilometre = metreValue * 0.001
        footField.text = String(footValue.rounded(toPlaces: 3))
        yardField.text = String(yardValue.rounded(toPlaces: 3))
        kilometreField.text = String(kilometre.rounded(toPlaces: 3))
        metreField.text = String(metreValue.rounded(toPlaces: 3))
    }
    
}
