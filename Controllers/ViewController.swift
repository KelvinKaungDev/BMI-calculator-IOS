//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var heightSlide: UISlider!
    @IBOutlet var weightSlide: UISlider!
    
    @IBOutlet var heightValue: UILabel!
    @IBOutlet var weightValue: UILabel!

    var calculation = CalculationBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showHeightValue(_ sender: Any) {
        self.heightValue.text = String(format: "%.1f", heightSlide.value) + "m"
    }
    
    @IBAction func showWeightValue(_ sender: Any) {
        self.weightValue.text = String(format: "%.0f", weightSlide.value) + "Kg"
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        calculation.calculationState(weight: weightSlide.value, height: heightSlide.value)
        
        self.performSegue(withIdentifier: "calculationResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "calculationResult") {
            let destination = segue.destination as! ResultViewController
            
            destination.result = calculation.resultBMI()
            destination.suggesstionLabel = calculation.result?.state
            destination.bgColor = calculation.result?.color
        }
    }
}

