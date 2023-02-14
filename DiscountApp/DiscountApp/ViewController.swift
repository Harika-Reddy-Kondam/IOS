//
//  ViewController.swift
//  DiscountApp
//
//  Created by Kondam,Harika Reddy on 2/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var enterAmount: UITextField!
    
    
    @IBOutlet weak var discRate: UITextField!
    
    
    @IBOutlet weak var calculateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calcDiscount(_ sender: Any) {
    
    
    // Read the entered amount 100
    var enteredAmount = Double(enterAmount.text!)
    
    // Read the entered discount Rate
    var enteredDiscRate = Double(discRate.text!)
    
    // Calculate the price after discount and assign it to the display label
    var priceAfterDiscount = enteredAmount! - ((enteredAmount!*enteredDiscRate!)/100)
        
        calculateLabel.text = "price After discount: $\(priceAfterDiscount)"
        
        
    }
}

