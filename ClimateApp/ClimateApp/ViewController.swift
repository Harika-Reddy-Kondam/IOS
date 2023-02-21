//
//  ViewController.swift
//  ClimateApp
//
//  Created by Kondam,Harika Reddy on 2/21/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var evlTempOl: UITextField!
    
    @IBOutlet weak var imageTempOl: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func evaluateTemperature(_ sender: Any) {
        var text1 = Int(evlTempOl.text!)
        
        if(text1!<0)
        {
            imageTempOl.image = UIImage(named: "summer")
        }
        else if(text1!<10)
        {
            imageTempOl.image = UIImage(named: "winter")
        }
        else if(text1!<20)
        {
            imageTempOl.image = UIImage(named: "rain")
        }
        else
        {
            imageTempOl.image = UIImage(named: "fall")
        }
    }
    
}

