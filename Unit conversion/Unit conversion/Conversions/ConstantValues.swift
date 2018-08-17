//
//  ConstantValues.swift
//  Unit conversion
//
//  Created by Anjana S Porawagama on 8/17/2561 BE.
//  Copyright © 2561 BE Porawagama A. S. All rights reserved.
//

class ConstantValues {
    
/* Required Values for Weight Conversion */
    enum WeightKeys {
        case gram
        case kilo
        case pound
        case ounce
    }
    enum WeightValues : Double {
        case gramInKilo = 1000
        case poundsInGram = 0.00220462
        case ounceInGram = 0.035274
        case ounceInPound = 16
    }
    
/* Required Values for Temperature Conversion */
    enum TempKeys {
        case celsius
        case fahrenheit
        case kelvin
    }
    enum TempValues : Double {
        case kelvinValue = 273.15
    }
}
