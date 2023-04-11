//
//  BMIViewController.swift
//  BMI
//
//  Created by Kattamuri,Vyshnavi on 4/10/23.
//

import UIKit

class BMIViewController: UIViewController {

    
    @IBOutlet weak var heightLabel: UILabel!
    
    
    @IBOutlet weak var WeightLabel: UILabel!
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    
    
    @IBOutlet weak var ImageView: UIImageView!
    var height = ""
    var weight = ""
    var bmical = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightLabel.text = heightLabel.text! + height
        WeightLabel.text = WeightLabel.text! + weight
        bmiLabel.text = bmiLabel.text! + bmical
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
    }
    
    
    func animateImage(_ imageName: String){
            //The image is hidden or opaque
            UIView.animate(withDuration: 1, animations: {
                self.ImageView.alpha = 0.0
            })

            //Image will appear with the given duration
        UIView.animate(withDuration: 1, delay: 1.2, animations: {
                self.ImageView.alpha = 1.0
                self.ImageView.image = UIImage(named:imageName)
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
