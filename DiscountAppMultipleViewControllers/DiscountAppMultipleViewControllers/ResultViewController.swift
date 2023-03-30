//
//  ResultViewController.swift
//  DiscountAppMultipleViewControllers
//
//  Created by Kondam,Harika Reddy on 3/30/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var displayAmountOl: UILabel!
    
    
    @IBOutlet weak var displayDiscRateOl: UILabel!
    
    
    @IBOutlet weak var resultOl: UILabel!
    
    var amount = ""
    var discRate = ""
    var priceAfterDisc = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayAmountOl.text = displayAmountOl.text!+amount;
        displayDiscRateOl.text = displayDiscRateOl.text!+discRate;
        resultOl.text = resultOl.text!+priceAfterDisc;
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
