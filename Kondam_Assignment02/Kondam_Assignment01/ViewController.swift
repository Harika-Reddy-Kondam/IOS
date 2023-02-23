//
//  ViewController.swift
//  Kondam_Assignment01
//
//  Created by Kondam,Harika Reddy on 1/30/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var year: UITextField!
    
    @IBOutlet weak var details: UITextField!
    
    @IBOutlet weak var fullName: UITextField!
    
    @IBOutlet weak var initials: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submit(_ sender: UIButton) {
        
        details.text = "Details"
        var fn = firstName.text!
        var ln = lastName.text!
        var dob = year.text!
        var fl = fullName.text!
        var n = initials.text!
        var a = age.text!
        fullName.text = "Full Name: \(ln) \(fn)"
        var y = initials.text!
        initials.text = "Initials: \(ln.prefix(1))   \(fn.prefix(1))"
        let year1 = Calendar.current.component(.year, from: Date())
        var x = Int(year.text!)
        var k = String(year1-x!)
        age.text = "Age : \(k)"
    }
    
    @IBAction func Reset(_ sender: UIButton) {
        details.text?.removeAll()
        fullName.text?.removeAll()
        initials.text?.removeAll()
        age.text?.removeAll()
        firstName.text?.removeAll()
        lastName.text?.removeAll()
        year.text?.removeAll()
    }
    
}

