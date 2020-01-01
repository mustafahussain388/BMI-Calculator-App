//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by Mustafa on 01/01/20.
//  Copyright © 2020 Mustafa. All rights reserved.
//
import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue:String? = nil
    var advice:String? = nil
    var color :UIColor? = nil
    
    @IBOutlet weak var bmiLbl: UILabel!
    @IBOutlet weak var adviceLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLbl.text = bmiValue
        adviceLbl.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
