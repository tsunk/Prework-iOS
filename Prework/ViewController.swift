//
//  ViewController.swift
//  Prework
//
//  Created by Katrina Tsun on 9/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillAmountTextField: UITextField!
    
    @IBOutlet weak var TipAmountLabel: UILabel!
    
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    @IBOutlet weak var TotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(BillAmountTextField.text!) ?? 0
        
        //Get Total tip by multiplying tip * tipPercentage
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        
        TipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Update Total Amount
        TotalLabel.text = String(format: "$%.2f", total)
        
    }
    
}


