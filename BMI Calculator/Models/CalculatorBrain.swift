//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ash Oldham on 19/05/2021.
//

import UIKit


struct CalculatorBrain {
  
  var bmi: BMI?
  
  mutating func calculateBMI(height: Float, weight: Float) {
     let bmiValue = weight / pow(height, 2)
    
    if bmiValue < 18.5 {
      bmi = BMI(value: bmiValue, advice: "Eat more!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
    } else if bmiValue < 24.9 {
      bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: .green)
    } else {
      bmi = BMI(value: bmiValue, advice: "Stop eating!", color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
    }
  }
  
  func getBMIValue() -> String {
    let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
    return bmiValue
  }
  
  func getAdvice() -> String {
    let advice = bmi?.advice ?? "Go calculate your BMI"
    return advice
  }
  
  func getColor() -> UIColor {
    let color = bmi?.color ?? #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    return color
  }
  
}
