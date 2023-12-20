//
//  ViewController.swift
//  BMI Calculator
//
// Created by MD ABIR HOSSAIN on 25-12-2023 at 6:34 PM
// Website: https://mdabirhossain.com/
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderDidChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
        print(String(format: "DD: %.2f", sender.value))
    }
    
    @IBAction func weightSliderDidChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
        print(String(format: "DD: %.0f", sender.value))
    }
    
}

