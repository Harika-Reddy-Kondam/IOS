//
//  ViewController.swift
//  sampleCalcApp
//
//  Created by Kondam,Harika Reddy on 2/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelOutlet: UILabel!
    
    var operand1: Double = -1.1
    var _operator: Character = " "
    var operand2: Double = -1.1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Button5Clicked(_ sender: UIButton) {
        labelOutlet.text = labelOutlet.text! + "5"
        if operand1 == -1.1{
            operand1 = 5
        }
        else {
            operand2 = 5
        }
    }
    
    
    @IBAction func ButtonPlusClicked(_ sender: UIButton) {
        labelOutlet.text =
        labelOutlet.text! + "3"
        if operand2 == -1.1{
            operand2 = 3
        }
        else {
            operand1 = 3
        }    }
    
    
    @IBAction func Button3Clicked(_ sender: UIButton) {
        labelOutlet.text =
        labelOutlet.text! +  " + "
        if _operator == " "{
            _operator = "+"
        }
    }
    
    
    @IBAction func ButtonEqualsClicked(_ sender: UIButton) {
        labelOutlet.text =
        labelOutlet.text! + " = "
        if(_operator == "+"){
            labelOutlet.text = "\(operand1+operand2)"
        }
    }
}

