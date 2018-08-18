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
    
/* Required Values for Speed Conversion */
    enum SpeedKeys {
        case mps
        case fpm
        case kph
        case mph
    }
    enum SpeedValues : Double {
        case fpmInMps = 196.85
        case kphInMps = 3.6
        case mphInMps = 2.23694
        case mpsInFpm = 0.00508
        case mpsInKph = 0.277778
        case mpsInMph = 0.44704
        case fpmInMph = 88
    }
    
/* Required Values for Distance Conversion */
    enum DistanceKeys {
        case metre
        case foot
        case yard
        case kilometre
        case mile
    }
    enum DistanceValues : Double {
        case footInMetre = 3.28
        case yardInMetre = 1.09361
        case kilometreInMetre = 0.001
        case mileInMetre = 0.000621371
        case metreInFoot = 0.3048
        case metreInYard = 0.9144
        case metreInKilometre = 1000
        case metreInMile = 1609.34
    }
}
