//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Leandro Prado on 2020-05-08.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTF: UITextField!
    
    @IBOutlet weak var tipAmount: UILabel!
    
    @IBOutlet weak var tipPercentageTF: UITextField!
    
    @IBOutlet weak var totalBill: UILabel!
    
    @IBOutlet weak var tipSlider: UISlider!
    
    @IBOutlet weak var errorMessageLabel: UILabel!
    

/*---------------------------- code to calculate using button & slider -------------------------------*/

    
    @IBAction func calculateTipButton(_ sender: UIButton) {
        calculateTip()
    }
    
    @IBAction func tipSliderAction(_ sender: Any) {
        tipPercentageTF.text = String("\((tipSlider.value * 10000).rounded()/100)") // rounded the tipSlider.value to keep 2 decimals (multiply by 10,000, then rounded the amount and divide by 100)
        calculateTip()
    }
    
    @IBAction func tipPercentageTFAction(_ sender: Any) {
        tipSlider.value = Float(tipPercentageTF.text!)! / 100
        calculateTip()
    }
    
    func calculateTip() {
        
        let bill: Double? = Double(billAmountTF.text!)
        if bill != nil {
            errorMessageLabel.text = ""
            let tipPercentage: Double? = Double(tipPercentageTF.text!)
            let tipAmountCalculated = bill! * tipPercentage!/100
            let totalBillAmount = bill! + tipAmountCalculated
            tipAmount.text = String(format: "%.2f", tipAmountCalculated)
            totalBill.text = String(format: "%.2f", totalBillAmount)
        } else {
            errorMessageLabel.text = "Insert a valid bill amount!"
        }
    }
    
/*---------------------------- View Did Load -------------------------------*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipPercentageTF.text = String("\(tipSlider.value * 100)")
        
//        Looks for single or multiple taps:
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        view.addGestureRecognizer(tap)
        
        }

/*---------------------------- code to show & hide the keyboard -------------------------------*/

//    Calls this function when the tap is recognized:
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
}

