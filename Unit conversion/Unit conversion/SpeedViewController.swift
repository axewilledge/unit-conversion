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
    var mpsValue = 0.0
    var fpmValue = 0.0
    var kphValue = 0.0
    var mphValue = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mps(_ sender: UITextField) {
        mpsValue = Double(mpsField.text!) ?? 0.0
        fpmValue = mpsValue * 196.85
        kphValue = mpsValue * 3.6
        mphValue = mpsValue * 2.23694
        fpmField.text = String(fpmValue.rounded(toPlaces: 3))
        kphField.text = String(kphValue.rounded(toPlaces: 3))
        mphField.text = String(mphValue.rounded(toPlaces: 3))
    }
    
    @IBAction func fpm(_ sender: Any) {
        fpmValue = Double(fpmField.text!) ?? 0.0
        mpsValue = fpmValue * 0.00508
        kphValue = mpsValue * 3.6
        mphValue = mpsValue * 2.23694
        mpsField.text = String(mpsValue.rounded(toPlaces: 3))
        kphField.text = String(kphValue.rounded(toPlaces: 3))
        mphField.text = String(mphValue.rounded(toPlaces: 3))
    }
    
    @IBAction func kph(_ sender: UITextField) {
        kphValue = Double(kphField.text!) ?? 0.0
        mpsValue = kphValue * 0.277778
        fpmValue = mpsValue * 196.85
        mphValue = mpsValue * 2.23694
        fpmField.text = String(fpmValue.rounded(toPlaces: 3))
        mpsField.text = String(mpsValue.rounded(toPlaces: 3))
        mphField.text = String(mphValue.rounded(toPlaces: 3))
    }
    
    @IBAction func mph(_ sender: UITextField) {
        mphValue = Double(mphField.text!) ?? 0.0
        mpsValue = mphValue * 0.44704
        fpmValue = mpsValue * 196.85
        kphValue = mpsValue * 3.6
        fpmField.text = String(fpmValue.rounded(toPlaces: 3))
        mpsField.text = String(mpsValue.rounded(toPlaces: 3))
        kphField.text = String(kphValue.rounded(toPlaces: 3))
    }
    
}
