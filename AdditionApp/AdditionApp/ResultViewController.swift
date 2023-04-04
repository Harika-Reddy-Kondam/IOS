//
//  ResultViewController.swift
//  AdditionApp
//
//  Created by Kondam,Harika Reddy on 4/3/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var n1OL: UILabel!
    
    
    @IBOutlet weak var n2OL: UILabel!
    
    
    @IBOutlet weak var sumOfNumbersOL: UILabel!
    
    
    @IBOutlet weak var doneImg: UIImageView!
    
    var n1 = ""
    var n2 = ""
    var sumOfNumbers = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        n1OL.text = n1OL.text! + n1
        n2OL.text = n2OL.text! + n2
        
        sumOfNumbersOL.text = sumOfNumbersOL.text! + sumOfNumbers
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
