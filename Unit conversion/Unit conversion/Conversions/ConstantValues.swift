//
//  ConstantValues.swift
//  Unit conversion
//
//  Created by Anjana S Porawagama on 8/17/2561 BE.
//  Copyright © 2561 BE Porawagama A. S. All rights reserved.
//

class ConstantValues {
    
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

}
