//
//  RedViewController.swift
//  Kadai7
//
//  Created by 吉田晃崇 on 2021/08/15.
//

import UIKit

class RedViewController: UIViewController {
    
    @IBOutlet private weak var number1TextField: UITextField!
    @IBOutlet private weak var number2TextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        number1TextField.keyboardType = .phonePad
        number2TextField.keyboardType = .phonePad
    }
    
    @IBAction func CalculationButton(_ sender: Any) {
        
        let num1 = Int(number1TextField.text ?? "") ?? 0
        let num2 = Int(number2TextField.text ?? "") ?? 0
        let result = num1 + num2
        resultLabel.text = String(result)
        number1TextField.resignFirstResponder()
        number2TextField.resignFirstResponder()
    }
}
