//
//  BMIVC.swift
//  BalmuriEngagment03
//
//  Created by Balmuri,Srinidhi on 4/7/23.
//

import UIKit

class BMIVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let feet = Array(1...10)
    let inches = Array(0...11)
    
    var selectedFeet = 0
    var selectedInches = 0
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return feet.count + 1
        } else { // Inches column
            return inches.count + 1
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if row == 0 {
            if component == 0 {
                return "Feet"
            } else { // Inches column
                return "Inches"
            }
        } else {
            if component == 0 {
                return "\(feet[row - 1])"
            } else {
                return "\(inches[row - 1])"
            }
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0 { // First row
            pickerView.selectRow(1, inComponent: component, animated: true) // Select the first value in the component
            if component == 0 { // Feet column
                selectedFeet = feet[0]
            } else { // Inches column
                selectedInches = inches[0]
            }
        } else { // Other rows
            if component == 0 { // Feet column
                selectedFeet = feet[row - 1]
            } else { // Inches column
                selectedInches = inches[row - 1]
            }
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightPicker.delegate = self
        heightPicker.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var ageTF: UITextField!
    
    
    @IBOutlet weak var weightTF: UITextField!
    
    
    @IBOutlet weak var heightPicker: UIPickerView!
    
    
    @IBOutlet weak var messageLBL: UILabel!
    
    
    
    @IBAction func onCalculate(_ sender: UIButton) {
        guard let wt = weightTF.text else { return}
        guard let weight = Double(wt) else { return }
        
        let feet = selectedFeet
        let inch = selectedInches
        
        
        
        
        let totalHeightInInches = (feet * 12) + inch
        let heightInMeters = Double(totalHeightInInches) * 0.0254
        let weightInKilograms = weight / 2.20462
        let bmi = weightInKilograms / (heightInMeters * heightInMeters)
        
        messageLBL.text = "Your Body Mass Index is: \(String(format: "%.1f", bmi))"
    }
    
    
    
    @IBAction func onReset(_ sender: UIButton) {
        messageLBL.text = ""
        ageTF.text = ""
        weightTF.text = ""
        heightPicker.selectRow(0, inComponent: 0, animated: true)
        heightPicker.selectRow(0, inComponent: 1, animated: true)
    }
    
    
}
