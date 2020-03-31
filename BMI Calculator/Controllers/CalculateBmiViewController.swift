//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateBmiViewController: UIViewController {

    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    private var bmiCalculator = BmiCalculator()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightValueLabel.text = String(format: "%.2fm", sender.value)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightValueLabel.text = String(format: "%.0fKg", sender.value)
        
    }
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        bmiCalculator.calculateBmi(weight: weight, height: height)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiCalculator.getBmiAsString(desiredDecimalPlaces: 1)
            destinationVC.advice = bmiCalculator.getAdvice()
            destinationVC.color = bmiCalculator.getColor()
        }
    }
    
}

