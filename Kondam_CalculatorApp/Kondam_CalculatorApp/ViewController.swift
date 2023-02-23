//
//  ViewController.swift
//  Kondam_CalculatorApp
//
//  Created by Kondam,Harika Reddy on 2/15/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    var numbr1: Double = 0.0
    var numbr2: Double = 0.0
    var res: Int  = 0
    var calcOpertn = ""
    var reqReslt: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAllClear(_ sender: UIButton) {
        remove()
    }
    func remove(){
        resultOutlet.text = ""
    }
    
    @IBAction func buttonClear(_ sender: UIButton) {
        if(!res.words.isEmpty){
            resultOutlet.text?.removeLast()
        }
    }
    
    @IBAction func buttonChange(_ sender: UIButton) {
        if let a = Double(resultOutlet.text!) {
                let b = -a
                resultOutlet.text = String(b)
            }
    }
    
    @IBAction func buttonDivision(_ sender: UIButton) {
        calcOpertn = "/"
        numbr1 = Double(resultOutlet.text!)!
        remove()
    }
    
    @IBAction func buttonDot(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "."
    }
    
    @IBAction func buttonModulus(_ sender: UIButton) {
        calcOpertn = "%"
        numbr1 = Double(resultOutlet.text!)!
        remove()
    }
    
    @IBAction func buttonPlus(_ sender: UIButton) {
       calcOpertn = "+"
       numbr1 = Double(resultOutlet.text!)!
       remove()
    }
    
    @IBAction func buttonMinus(_ sender: UIButton) {
        calcOpertn = "-"
        numbr1 = Double(resultOutlet.text!)!
        remove()
    }
       
    @IBAction func buttonMultiply(_ sender: UIButton) {
        calcOpertn = "x"
        numbr1 = Double(resultOutlet.text!)!
        remove()
    }
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "7"
    }
    
    @IBAction func buttonEight(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "8"
    }
    
    @IBAction func buttonNine(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "9"
    }
        
    @IBAction func buttonFour(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "4"
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "5"
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "6"
    }
        
    @IBAction func buttonOne(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "1"
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "2"
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "3"
    }

    @IBAction func buttonZero(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "0"
    }
    
    @IBAction func buttonEqual(_ sender: UIButton) {
        
        numbr2 = Double(resultOutlet.text!)!
       
        switch calcOpertn{
        case "+":
            res = Int(numbr1+numbr2)
            resultOutlet.text = String(Int(exactly: res)!)
        case "-":
            res = Int(numbr1-numbr2)
            resultOutlet.text = String(res)
            
        case "%":
            let rem = numbr1.truncatingRemainder(dividingBy: numbr2)
                    resultOutlet.text = String(format: "%.1f", rem)
        case "x":
            res = Int(numbr1*numbr2)
            resultOutlet.text = String(res)
            
        case "/":
            if numbr2 == 0 {
            resultOutlet.text = "Not a number"
            } else {
                let unroundedres = numbr1/numbr2
                resultOutlet.text = String(format: "%.5f", unroundedres)
                //resultOutlet.text = String(res)
            }
        default:
            resultOutlet.text = "ERROR"
        }
    }
    
}



