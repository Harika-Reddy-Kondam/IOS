//
//  ViewController.swift
//  BMI
//
//  Created by Kattamuri,Vyshnavi on 4/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var HeightOutlet: UITextField!
    
    
    @IBOutlet weak var WeightOutlet: UITextField!
    
    
    var bmi = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var weight = " "
        var height = " "
        // Do any additional setup after loading the view.
    }


    @IBAction func BMICalculatorPressed(_ sender: UIButton) {
        let height = Double(HeightOutlet.text!) ?? 0.0
        let weight = Double(WeightOutlet.text!) ?? 0.0
        
        bmi = Int(weight / (height/100 * height/100))
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "BMISegue"{
            let destination = segue.destination as? BMIViewController
            destination?.weight = WeightOutlet.text!
            destination?.height = HeightOutlet.text!
            destination?.bmical = String(bmi)
            
        }
            
    }
}

