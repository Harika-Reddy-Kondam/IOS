//
//  ViewController.swift
//  HelloApp
//
//  Created by Kondam,Harika Reddy on 1/24/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    
    
    @IBOutlet weak var displayLabelOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonClicked(_ sender: UIButton) {
        //Read the input and store it (assign it to a variable.)
        var input = nameOutlet.text!
        
        //perform String interpolation "Hello, name!" and assign it to display label
        displayLabelOutlet.text = "Hello, \(input)!"
    }
    
}

