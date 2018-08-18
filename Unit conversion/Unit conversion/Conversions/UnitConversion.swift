//
//  UnitConversion.swift
//  Unit conversion
//
//  Created by Anjana S Porawagama on 8/16/2561 BE.
//  Copyright © 2561 BE Porawagama A. S. All rights reserved.
//

class UnitConversion {
    
    private let defualtValue : Double
    
/* Properties for Weight Conversion */
    private var gramValue : Double
    private var kiloValue : Double
    private var poundValue : Double
    private var ounceValue : Double
    
    private let gramInKilo : Double
    private let poundsInGram : Double
    private let ounceInGram : Double
    private let ounceInPound : Double
    
/* Properties for Temperature Conversion */
    private var celsiusValue : Double
    private var fahrenheitValue : Double
    private var kelvinValue : Double
    
    private let kelvin : Double
  
/* Properties for Speed Coversion */
    private var mpsValue : Double
    private var fpmValue : Double
    private var kphValue : Double
    private var mphValue : Double
    
    private let fpmInMps : Double
    private let kphInMps : Double
    private let mphInMps : Double
    
    private let mpsInFpm : Double
    
    private let mpsInKph : Double
    
    private let mpsInMph : Double
    private let fpmInMph : Double
    
/* Properties for Weight Conversion */
    private var metreValue : Double
    private var footValue : Double
    private var yardValue : Double
    private var kilometre : Double
    private var mileValue : Double
    
    private let footInMetre : Double
    private let yardInMetre : Double
    private let kilometreInMetre : Double
    private let mileInMetre : Double
    private let metreInFoot : Double
    private let metreInYard : Double
    private let metreInKilometre : Double
    private let metreInMile : Double
    
    init() {
        self.defualtValue = 0.0
        self.gramInKilo = ConstantValues.WeightValues.gramInKilo.rawValue
        self.poundsInGram = ConstantValues.WeightValues.poundsInGram.rawValue
        self.ounceInGram = ConstantValues.WeightValues.ounceInGram.rawValue
        self.ounceInPound = ConstantValues.WeightValues.ounceInPound.rawValue
        
        self.kelvin = ConstantValues.TempValues.kelvinValue.rawValue
        
        self.fpmInMps = ConstantValues.SpeedValues.fpmInMps.rawValue
        self.kphInMps = ConstantValues.SpeedValues.kphInMps.rawValue
        self.mphInMps = ConstantValues.SpeedValues.mphInMps.rawValue
        self.mpsInFpm = ConstantValues.SpeedValues.mpsInFpm.rawValue
        self.mpsInKph = ConstantValues.SpeedValues.mpsInKph.rawValue
        self.mpsInMph = ConstantValues.SpeedValues.mpsInMph.rawValue
        self.fpmInMph = ConstantValues.SpeedValues.fpmInMph.rawValue
        
        self.footInMetre = ConstantValues.DistanceValues.footInMetre.rawValue
        self.yardInMetre = ConstantValues.DistanceValues.yardInMetre.rawValue
        self.kilometreInMetre = ConstantValues.DistanceValues.kilometreInMetre.rawValue
        self.mileInMetre = ConstantValues.DistanceValues.mileInMetre.rawValue
        self.metreInFoot = ConstantValues.DistanceValues.metreInFoot.rawValue
        self.metreInYard = ConstantValues.DistanceValues.metreInYard.rawValue
        self.metreInKilometre = ConstantValues.DistanceValues.metreInKilometre.rawValue
        self.metreInMile = ConstantValues.DistanceValues.metreInMile.rawValue
        
        self.gramValue = self.defualtValue
        self.kiloValue = self.defualtValue
        self.poundValue = self.defualtValue
        self.ounceValue = self.defualtValue
        
        self.celsiusValue = self.defualtValue
        self.fahrenheitValue = self.defualtValue
        self.kelvinValue = self.defualtValue
        
        self.mpsValue = self.defualtValue
        self.fpmValue = self.defualtValue
        self.kphValue = self.defualtValue
        self.mphValue = self.defualtValue
        
        self.metreValue = self.defualtValue
        self.footValue = self.defualtValue
        self.yardValue = self.defualtValue
        self.kilometre = self.defualtValue
        self.mileValue = self.defualtValue
    }
    
/* ~~~Weight Conversion Methods START~~~ */
    func generateWeights(key : ConstantValues.WeightKeys , value : String) -> Void{
        switch key {
            case .gram :
                self.gramValue = Double(value) ?? self.defualtValue
                self.kiloValue = self.gramValue/self.gramInKilo
                self.poundValue = self.gramValue * self.poundsInGram
                self.ounceValue = self.poundValue * self.ounceInPound
            case .kilo :
                self.kiloValue = Double(value) ?? defualtValue
                self.gramValue = self.kiloValue  * self.gramInKilo
                self.poundValue = self.gramValue * self.poundsInGram
                self.ounceValue = self.poundValue * self.ounceInPound
            case .pound :
                self.poundValue = Double(value) ?? defualtValue
                self.gramValue = self.poundValue/self.poundsInGram
                self.kiloValue = self.gramValue/self.gramInKilo
                self.ounceValue = self.poundValue * self.ounceInPound
            case .ounce :
                self.ounceValue = Double(value) ?? defualtValue
                self.gramValue = self.ounceValue/self.ounceInGram
                self.kiloValue = self.gramValue/self.gramInKilo
                self.poundValue = self.gramValue * self.poundsInGram
        }
    }
    
    func getGram() -> String {
        return String(self.gramValue.rounded(toPlaces: 5))
    }
    
    func getKilo() -> String {
        return String(self.kiloValue.rounded(toPlaces: 5))
    }
    
    func getPound() -> String {
        return String(self.poundValue.rounded(toPlaces: 5))
    }
    
    func getOunce() -> String {
        return String(self.ounceValue.rounded(toPlaces: 5))
    }
/* ~~~Weight Conversion Methods END~~~ */
    
/* ~~~Temperature Conversion Methods START~~~ */
    func generateTemp(key : ConstantValues.TempKeys , value : String) -> Void {
        switch key {
            case .celsius :
                self.celsiusValue = Double(value) ?? defualtValue
                self.fahrenheitValue = (self.celsiusValue * (9/5)) + 32
                self.kelvinValue = self.celsiusValue + self.kelvin
            case .fahrenheit :
                self.fahrenheitValue = Double(value) ?? defualtValue
                self.celsiusValue = (self.fahrenheitValue - 32 ) * (5/9)
                self.kelvinValue = self.celsiusValue + self.kelvin
            case .kelvin :
                self.kelvinValue = Double(value) ?? defualtValue
                self.celsiusValue = self.kelvinValue - self.kelvin
                self.fahrenheitValue = (self.celsiusValue * (9/5)) + 32
        }
    }
    
    func getCelsius() -> String {
        return String(self.celsiusValue.rounded(toPlaces: 5))
    }
    
    func getFahrenheit() -> String {
        return String(self.fahrenheitValue.rounded(toPlaces: 5))
    }
    
    func getKelvin() -> String {
        return String(self.kelvinValue.rounded(toPlaces: 5))
    }
/* ~~~Temperature Conversion Methods END~~~ */
    
    
/* ~~~Speed Conversion Methods START~~~ */
    func generateSpeeds(key : ConstantValues.SpeedKeys , value : String) -> Void{
        switch key {
            case .mps :
                self.mpsValue = Double(value) ?? defualtValue
                self.fpmValue = self.mpsValue * self.fpmInMps
                self.kphValue = self.mpsValue * self.kphInMps
                self.mphValue = self.mpsValue * self.mphInMps
            case .fpm :
                self.fpmValue = Double(value) ?? defualtValue
                self.mpsValue = self.fpmValue * self.mpsInFpm
                self.kphValue = self.mpsValue * self.kphInMps
                self.mphValue = self.mpsValue * self.mphInMps
            case .kph :
                self.kphValue = Double(value) ?? defualtValue
                self.mpsValue = self.kphValue * self.mpsInKph
                self.fpmValue = self.mpsValue * self.fpmInMps
                self.mphValue = self.mpsValue * self.mphInMps
            case .mph :
                self.mphValue = Double(value) ?? defualtValue
                self.mpsValue = self.mphValue * self.mpsInMph
                self.fpmValue = self.mphValue * self.fpmInMph
                self.kphValue = self.mpsValue * self.kphInMps
        }
    }
    
    func getMps() -> String {
        return String(self.mpsValue.rounded(toPlaces: 5))
    }
    
    func getFpm() -> String {
        return String(self.fpmValue.rounded(toPlaces: 5))
    }
    
    func getKph() -> String {
        return String(self.kphValue.rounded(toPlaces: 5))
    }
    
    func getMph() -> String {
        return String(self.mphValue.rounded(toPlaces: 5))
    }
/* ~~~Speed Conversion Methods END~~~ */
   
    
/* ~~~Distance Conversion Methods START~~~ */
    func generateDistance(key : ConstantValues.DistanceKeys , value : String) -> Void{
        switch key {
            case .metre :
                self.metreValue = Double(value) ?? 0.0
                self.footValue = self.metreValue *  self.footInMetre
                self.yardValue = self.metreValue *  self.yardInMetre
                self.kilometre = self.metreValue * self.kilometreInMetre
                self.mileValue = self.metreValue * self.mileInMetre
            case .foot :
                self.footValue = Double(value) ?? 0.0
                self.metreValue = self.footValue * self.metreInFoot
                self.yardValue = self.metreValue * self.yardInMetre
                self.kilometre = self.metreValue * self.kilometreInMetre
                self.mileValue = self.metreValue * self.mileInMetre
            case .yard :
                self.yardValue = Double(value) ?? 0.0
                self.metreValue = self.yardValue * self.metreInYard
                self.footValue = self.metreValue * self.footInMetre
                self.kilometre = self.metreValue * self.kilometreInMetre
                self.mileValue = self.metreValue * self.mileInMetre
            case .kilometre :
                self.kilometre = Double(value) ?? 0.0
                self.metreValue = self.kilometre * self.metreInKilometre
                self.footValue = self.metreValue * self.footInMetre
                self.yardValue = self.metreValue * self.yardInMetre
                self.mileValue = self.metreValue * self.mileInMetre
            case .mile :
                self.mileValue = Double(value) ?? 0.0
                self.metreValue = self.mileValue * self.metreInMile
                self.footValue = self.metreValue * self.footInMetre
                self.yardValue = self.metreValue * self.yardInMetre
                self.kilometre = self.metreValue * self.kilometreInMetre
        }
    }
    
    func getMetre() -> String {
        return String(self.metreValue.rounded(toPlaces: 5))
    }
    
    func getFoot() -> String {
        return String(self.footValue.rounded(toPlaces: 5))
    }
    
    func getYard() -> String {
        return String(self.yardValue.rounded(toPlaces: 5))
    }
    
    func getKilometre() -> String {
        return String(self.kilometre.rounded(toPlaces: 5))
    }
    
    func getMile() -> String {
        return String(self.mileValue.rounded(toPlaces: 5))
    }
/* ~~~Distance Conversion Methods END~~~ */
}
