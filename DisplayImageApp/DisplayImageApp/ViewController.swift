//
//  ViewController.swift
//  DisplayImageApp
//
//  Created by Kondam,Harika Reddy on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOl: UIImageView!
    
    
    @IBOutlet weak var descriptionLabelOl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func displayImage(_ sender: Any) {
        //Display the image
        imageViewOl.image = UIImage(named:"dhoni")
        //Display the text in label
        descriptionLabelOl.text = "captain of 2011 cricket world cup!"
    }
}

