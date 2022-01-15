//
//  ViewController.swift
//  Tip Calculator
//
//  Created by MacOS on 1/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipAmountText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func parseBillAmount() -> Double {
        return Double(billAmount.text!) ?? 0;
    }

    func getTipCoefficient() -> Double {
        return Double(tipPercentage.selectedSegmentIndex) * 0.05 + 0.15;
    }
    
    @IBAction func onTipChange(_ sender: Any) {
        tipAmountText.text = String(format: "$%.2f", parseBillAmount() * getTipCoefficient());
        totalAmount.text = String(format: "$%.2f", parseBillAmount() * (getTipCoefficient()+1));
    }
}

