//
// 
// FileName: ResultViewController.swift
// ProjectName: BMI Calculator
//
// Created by MD ABIR HOSSAIN on 22-12-2023 at 7:57 AM
// Website: https://mdabirhossain.com/
//


import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
