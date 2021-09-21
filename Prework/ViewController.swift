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
    @IBOutlet weak var PartyControl: UISegmentedControl!
    @IBOutlet weak var PartyTotal: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"

    }
    

    @IBAction func CalculateTip(_ sender: Any) {
        // Get bill amount from text field input
        
        let bill = Double(BillAmountTextField.text!) ?? 0
        
        
        //Get Total tip by multiplying tip * tipPercentage
        
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        let partySelection = [1.0, 2.0, 3.0, 4.0, 5.0]
        let partyTotal = total/partySelection[PartyControl.selectedSegmentIndex]
        
        // Update Tip Amount Label
        
        TipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Update Total Amount
        TotalLabel.text = String(format: "$%.2f", total)
        PartyTotal.text = String(format: "$%.2f", partyTotal)
    }
    
}


