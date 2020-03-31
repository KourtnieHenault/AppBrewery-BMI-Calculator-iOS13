//
//  BmiCalculator.swift
//  BMI Calculator
//
//  Created by Kourtnie Jenkins on 3/26/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct BmiCalculator {

    var bmi: BMI?
    
    mutating func calculateBmi(weight: Float, height: Float) {
        let bmiValue  = weight / pow(height, 2)
        
        switch bmiValue {
        case 0 ..< 18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pie", color: #colorLiteral(red: 0.6335350871, green: 0.8162769079, blue: 0.8878799677, alpha: 1))
        case 18.5 ... 24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        default:
            bmi = BMI(value: bmiValue, advice: "Eat less pie", color: #colorLiteral(red: 0.658737123, green: 0, blue: 0.08458629996, alpha: 1))
        }

    }
    
    func getBmiAsString(desiredDecimalPlaces: Int) -> String {
        let bmiStringRepresentation = String(format: "%.\(desiredDecimalPlaces)f", bmi?.value ?? 0.0)
        return bmiStringRepresentation
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
}
