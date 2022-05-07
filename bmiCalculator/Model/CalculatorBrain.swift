//
//  CalculatorBrain.swift
//  bmiCalculator
//
//  Created by Hugo Silva on 07/05/22.
//

import UIKit

struct CalculatorBrain {
    
    var bmiValue: BMI?
    
    mutating func calculateBMI (height: Float, weight: Float) {
        let bmi = weight / (height * height)
        let decimalBmi = round(bmi*100)/100.0
        let colors = [#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)]
        if decimalBmi > 24.9 {
            bmiValue = BMI(value: decimalBmi, advice: "Eat less pies!", color: colors[0])
        } else if decimalBmi >= 18.5 {
            bmiValue = BMI(value: decimalBmi, advice: "Fit as a fiddle!", color: colors[1])
        } else {
            bmiValue = BMI(value: decimalBmi, advice: "Eat more pies!", color: colors[2])
        }
    }
    func getBMIValue () -> Float {
        return bmiValue?.value ?? 0
    }
    func getAdvice () -> String {
        return bmiValue?.advice ?? "No advice"
    }
    func getColor () -> UIColor {
        return bmiValue?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}

