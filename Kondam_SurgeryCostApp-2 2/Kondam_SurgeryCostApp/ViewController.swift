//
//  ViewController.swift
//  Kondam_SurgeryCostApp
//
//  Created by Kondam,Harika Reddy on 2/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var patientNameol: UITextField!
    
    
    @IBOutlet weak var surgeryTypeOl: UITextField!
    
    
    @IBOutlet weak var enterCost: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonCost(_ sender: Any) {
        
        
        var name = patientNameol.text!
        
        var surgeryType = surgeryTypeOl.text!
            
            // Read the entered discount Rate
            var surgeryCost = Double(enterCost.text!)
             var TotalSurgeryCost : Double = 0
            
            // Calculate the price after discount and assign it to the display label
            
        
        
    
        if(surgeryType == "Heart" ){
            TotalSurgeryCost = surgeryCost! * (1+11.75)-500
            imageView.image = UIImage(named: "Heart")
            detailsLabel.text = "price After discount: $\(TotalSurgeryCost) 😊"

        }
        else if(surgeryType == "Brain" ){
            TotalSurgeryCost=surgeryCost!*(1+6.25)-350
            imageView.image = UIImage(named: "Brain")
            detailsLabel.text = "price After discount: $\(TotalSurgeryCost) 😊"
        }
            else if(surgeryType == "knee" ){
                TotalSurgeryCost=surgeryCost!*(1+6.25)-750
                imageView.image = UIImage(named: "knee")
                detailsLabel.text = "price After discount: $\(TotalSurgeryCost) 😊"
        
    }
        else {
            imageView.image = UIImage(named: "noreults")
            detailsLabel.text = "Enter all details"
        }
}

}
