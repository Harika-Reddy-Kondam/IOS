//
//  ViewController.swift
//  BmiExam
//
//  Created by Kondam,Harika Reddy on 4/11/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var bmi = 0
    var weight = ""
    var height = ""
    
    @IBOutlet weak var heightOl: UITextField!
    
    @IBOutlet weak var weightOl: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        
        let height = Double(heightOl.text!) ?? 0.0
        let weight = Double(weightOl.text!) ?? 0.0
        
        bmi = Int(weight / (height/100 * height/100))
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "resultSegue"{
            let destination = segue.destination as? ResultViewController
            destination?.weight = weightOl.text!
            destination?.height = heightOl.text!
            destination?.bmical = String(bmi)
        }
        
    }
    
}
