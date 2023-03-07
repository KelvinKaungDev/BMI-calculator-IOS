//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Kaung Htet OO on 3/3/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var result : String?
    var suggesstionLabel : String?
    var bgColor : UIColor?

    @IBOutlet var calculationResult: UILabel!
    @IBOutlet var suggesstion: UILabel!
    @IBOutlet var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculationResult.text = result ?? "0.0"
        suggesstion.text = suggesstionLabel?.uppercased() ?? "EAT MORE SNACKS"
        bgView.backgroundColor = bgColor ?? UIColor.blue
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func reCalculate(_ sender: Any) {
        dismiss(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
