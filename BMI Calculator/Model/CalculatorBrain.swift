//
// 
// FileName: CalculatorBrain.swift
// ProjectName: BMI Calculator
//
// Created by MD ABIR HOSSAIN on 22-12-2023 at 9:15 AM
// Website: https://mdabirhossain.com/
//


import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        var advice: String
        var color: UIColor
        
        if bmiValue < 18.8 {
            advice = "You are underweight."
            color =  #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        } else if bmiValue < 24.9 {
            advice = "You are fit for now."
            color =  #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        } else {
            advice = "Your weight is way high."
            color =  #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        }
        
        bmi = BMI(value: bmiValue, advice: advice, color: color)
    }
    
    func getBMIValue() -> String {
        let bmiStringValue = String(format: "%0.1f", bmi?.value ?? 0.0)
        return bmiStringValue
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
