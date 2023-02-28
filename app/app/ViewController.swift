//
//  ViewController.swift
//  app
//
//  Created by Kondam,Harika Reddy on 2/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textOl: UITextField!
    
    
    @IBOutlet weak var imageOl: UIImageView!
    
    @IBOutlet weak var labelOl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func submitBtn(_ sender: UIButton) {
        var text1 = Int(textOl.text!)
        
        if(text1! > -40 && text1! <= -20)
        {
            imageOl.image = UIImage(named: "summer")
            labelOl.text = "It is extremely hot outsides"
        }
        else if(text1! == 20)
        {
            imageOl.image = UIImage(named: "winter")
            labelOl.text = "It is extremely cold outsides"
        }
        else if(text1!<20)
        {
            imageOl.image = UIImage(named: "rain")
            labelOl.text = "It is raining"
        }
        else
        {
            imageOl.image = UIImage(named: "fall")
            labelOl.text = "It is fall"
        }
    }
    
   
}

