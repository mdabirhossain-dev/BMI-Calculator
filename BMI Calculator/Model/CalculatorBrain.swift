//
// 
// FileName: CalculatorBrain.swift
// ProjectName: BMI Calculator
//
// Created by MD ABIR HOSSAIN on 22-12-2023 at 9:15 AM
// Website: https://mdabirhossain.com/
//


import Foundation

struct CalculatorBrain {
    
    var bmiValue: Float?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmiValue = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        let bmiStringValue = String(format: "%0.1f", bmiValue ?? 0.0)
        return bmiStringValue
    }
}
