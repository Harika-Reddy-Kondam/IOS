//
//  ViewController.swift
//  CoordinatesDemo
//
//  Created by Kondam,Harika Reddy on 3/23/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageViewOl: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // minX and miny
        
        let minX = imageViewOl.frame.minX
        let minY = imageViewOl.frame.minY
        print("(\(minX),\(minY))")
        
        let maxX = imageViewOl.frame.maxX
        let maxY = imageViewOl.frame.maxY
        print("(\(maxX),\(maxY))")
        
        let midX = imageViewOl.frame.midX
        let midY = imageViewOl.frame.midY
        print("(\(midX),\(midY))")
        
        // move the location of the image view to the upper left corner.
        imageViewOl.frame.origin.x =  0
        imageViewOl.frame.origin.y =  0
        
        // move the location of the image view to the upper right corner.
        imageViewOl.frame.origin.x =  314
        imageViewOl.frame.origin.y =  0
        
        // move the location of the image view to the bottom left corner.
        imageViewOl.frame.origin.x =  0
        imageViewOl.frame.origin.y =  796
        
        // move the location of the image view to the bottom right corner.
        imageViewOl.frame.origin.x =  314
        imageViewOl.frame.origin.y =  796
        
        // move the location of the image view to the midpoint of the screen.
        imageViewOl.frame.origin.x =  157
        imageViewOl.frame.origin.y =  398
        
    }


}

