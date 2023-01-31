//
//  ViewController.swift
//  vowelApp
//
//  Created by Kondam,Harika Reddy on 1/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textOutlet: UITextField!
    
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func vowelButton(_ sender: UIButton) {
        
        var sometext = textOutlet.text!
        if (sometext.contains("i")||sometext.contains("e")){
            labelOutlet.text = "The \(sometext) has vowel 😃"
        }
    else{
            labelOutlet.text = "The \(sometext) has no vowel 🥹"
        }
            
        
    }
    
}

