//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Mustafa on 01/01/20.
//  Copyright © 2020 Mustafa. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi:BMI?
    
    mutating func calculateBMI(_ height:Float,_ weight:Float){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Fries", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.5 {
            bmi = BMI(value: bmiValue, advice: "Fit as Popaye", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less Fries", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBmiValue()->String{
        let bmiValueto1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValueto1Decimal
    }
    
    func getAdvice()->String{
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? UIColor.white
    }
    
}
