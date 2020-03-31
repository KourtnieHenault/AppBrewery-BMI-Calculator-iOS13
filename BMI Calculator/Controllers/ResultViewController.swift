//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Kourtnie Jenkins on 3/26/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiResultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiResultLabel.text = bmiValue
        adviceLabel.text = advice
        self.view.backgroundColor = color

    }
    
    @IBAction func recalculateButtonTapped(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }

}
