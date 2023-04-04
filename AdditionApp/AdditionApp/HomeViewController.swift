//
//  ViewController.swift
//  AdditionApp
//
//  Created by Kondam,Harika Reddy on 4/3/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var num1OL: UITextField!
    
    
    @IBOutlet weak var num2OL: UITextField!
    
    var sum = 0.0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calcSumBtnClicked(_ sender: UIButton) {
        
        var num1 = Double(num1OL.text!)
        
        var num2 = Double(num2OL.text!)
        
        sum = num1! + num2!
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue"{
            var destination = segue.destination as! ResultViewController
            destination.n1 = num1OL.text!
            destination.n2 = num2OL.text!
            destination.sumOfNumbers = String(sum)
        }
    }
    

}

