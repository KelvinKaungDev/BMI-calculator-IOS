//
//  CalculationBrain.swift
//  BMI Calculator
//
//  Created by Kaung Htet OO on 3/4/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculationBrain {
    var result : BMI?
    
    func resultBMI() -> String {
        return String(format: "%.1f", result?.result ?? 0.0)
    }
    
    mutating func calculationState(weight : Float, height : Float) {
        let calculationResult = Float( weight / pow(height, 2))
        
        if calculationResult < 18.5 {
            result = BMI(state: "Under Weight", color: UIColor.yellow, result: calculationResult)
        } else if calculationResult > 18.5 && calculationResult < 24.9 {
            result = BMI(state: "Normal Weight", color: UIColor.blue, result: calculationResult)
        } else {
            result = BMI(state: "Over Weight", color: UIColor.red, result: calculationResult)
        }
    }
}
