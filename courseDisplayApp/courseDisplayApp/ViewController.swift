//
//  ViewController.swift
//  courseDisplayApp
//
//  Created by Kondam,Harika Reddy on 3/16/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayiMG: UIImageView!
    
    @IBOutlet weak var crsNum: UILabel!
    
    @IBOutlet weak var crsTitle: UILabel!
    
    @IBOutlet weak var crsSem: UILabel!
    
    @IBOutlet weak var prevBtn: UIButton!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    var imageNumber = 0
    
    let courses = [["img01","44555","Network Security","Fall 2022"],
                   ["img02","44643","ios","Spring 2023"],
                   ["img03","44656","Streaming Data","Fall 2024"]]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Load the first image (image in the 0th position)
        
        displayiMG.image = UIImage(named: courses[0][0])
        
        // Load the course details (number, title and semester)
        crsNum.text = courses[0][1]
        crsTitle.text = courses[0][2]
        crsSem.text = courses[0][3]
        
        // Previous button disabled
        prevBtn.isEnabled = false
        
        // next button enabled
        nextBtn.isEnabled = true
        
    }
    
    @IBAction func btnPrev(_ sender: UIButton) {
        
        //Decrement the imageNumber
        imageNumber-=1
        
        //Update the course details
//        displayiMG.image = UIImage(named: courses[imageNumber][0])
//        crsNum.text = courses[imageNumber][1]
//        crsTitle.text = courses[imageNumber][2]
//        crsSem.text = courses[imageNumber][3]
        
        updateCourseDetails(imageNumber)
        
        //Next button should be enabled
        nextBtn.isEnabled = true
        
        //once you reach the starting of the array, we need to disable the previous button.
        if(imageNumber == 0){
            prevBtn.isEnabled = true
        }
        
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        // increment the image number
        imageNumber += 1
        
        // Update the details of the next course(image,num,title and sem offered)
//        displayiMG.image = UIImage(named: courses[imageNumber][0])
//        crsNum.text = courses[imageNumber][1]
//        crsTitle.text = courses[imageNumber][2]
//        crsSem.text = courses[imageNumber][3]
        
        updateCourseDetails(imageNumber)
        
        // previous button should be enabled
        prevBtn.isEnabled = true
        
        // when we reach the end of the array next button should be disabled
        if(imageNumber == courses.count-1){
            // reahced the end of the array
            nextBtn.isEnabled = false
        }
    }
    
    func updateCourseDetails(_ imageNumber:Int) {
        displayiMG.image = UIImage(named: courses[imageNumber][0])
        crsNum.text = courses[imageNumber][1]
        crsTitle.text = courses[imageNumber][2]
        crsSem.text = courses[imageNumber][3]
    }
    
}

