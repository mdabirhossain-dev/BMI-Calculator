//
//  CalculateViewController.swift
//  BMI Calculator
//
// Created by MD ABIR HOSSAIN on 25-12-2023 at 6:34 PM
// Website: https://mdabirhossain.com/
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue: String = "0.0"
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderDidChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderDidChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        bmiValue = String(format: "%0.1f", bmi)
        print(bmi)
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%0.1f", bmi)
//
//        self.present(secondVC, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as? ResultViewController
            destinationVC?.bmiValue = bmiValue
        }
    }
    
}
