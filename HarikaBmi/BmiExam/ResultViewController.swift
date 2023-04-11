//
//  ResultViewController.swift
//  BmiExam
//
//  Created by Kondam,Harika Reddy on 4/11/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var htOl: UILabel!
    @IBOutlet weak var wtOl: UILabel!
    @IBOutlet weak var bmiLbl: UILabel!
    
    @IBOutlet weak var bmiImg: UIImageView!
    
    
    var height = ""
    var weight = ""
    var bmical = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        htOl.text = htOl.text! + height
        wtOl.text = wtOl.text! + weight
        bmiLbl.text = bmiLbl.text! + bmical
        // Do any additional setup after loading the view.
        var bmi = Int(bmical) ?? 0
        if bmi < 18{
            animateImage("under")
        }
        else if bmi > 18 && bmi < 25{
            animateImage("correct")
        }
        else{
            animateImage("overweight")
        }
        // Do any additional setup after loading the view.
    }
    
    func animateImage(_ imageName: String){
            //The image is hidden or opaque
            UIView.animate(withDuration: 1, animations: {
                self.bmiImg.alpha = 0.0
            })

            //Image will appear with the given duration
        UIView.animate(withDuration: 1, delay: 1.2, animations: {
                self.bmiImg.alpha = 1.0
                self.bmiImg.image = UIImage(named:imageName)
            })
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
