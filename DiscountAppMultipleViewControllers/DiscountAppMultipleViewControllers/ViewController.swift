//
//  ViewController.swift
//  DiscountAppMultipleViewControllers
//
//  Created by Kondam,Harika Reddy on 3/30/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var AmountOl: UITextField!
    
    @IBOutlet weak var discRateOl: UITextField!
    
    
    var priceAfterDisc = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calcBtnClicked(_ sender: Any) {
        // Read the text and convert into Double
        var amount = Double(AmountOl.text!)
        print(amount!)
        var discrate = Double(discRateOl.text!)
        print(discrate!)
        
        priceAfterDisc = amount! - (amount!*discrate!/100)
        print(priceAfterDisc)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if (transition == "resultSegue"){
            // set the destination
            var destination = segue.destination as! ResultViewController
            
            // Assign appropriate values to the destination
            destination.amount = AmountOl.text!
            destination.discRate = discRateOl.text!
            destination.priceAfterDisc = String(priceAfterDisc)
            
        }
    }
}



