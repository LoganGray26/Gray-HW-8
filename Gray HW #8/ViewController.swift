//
//  ViewController.swift
//  Gray HW #8
//
//  Created by logan gray on 5/3/20.
//  Copyright © 2020 logan gray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputlabel1: UILabel!
    @IBOutlet weak var outputlabel2: UILabel!
    var originalRect: CGRect!
    @IBOutlet weak var wetdog: UIImageView!
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion==UIEvent.EventSubtype.motionShake {
            outputlabel2.text = "The pup is all dry now!"
        }
    }
    
    
    @IBAction func pinch(_ sender: Any) {
        
        var recognizer: UIPinchGestureRecognizer
        var feedback: String
        var scale: CGFloat
        
        recognizer=sender as! UIPinchGestureRecognizer
        scale=recognizer.scale
        wetdog.transform = CGAffineTransform(rotationAngle: 0.0)
        feedback=String(format: "He grew!  Scale: %1.2f",Float(recognizer.scale),Float(recognizer.velocity))
        outputlabel1.text=feedback
        wetdog.frame=CGRect(origin: CGPoint(x: self.originalRect.origin.x, y: originalRect.origin.y), size: CGSize(width: originalRect.size.width*scale, height: originalRect.size.height*scale))
        
        
        
        
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      becomeFirstResponder()
        
        originalRect = wetdog.frame;
        var tempImageView: UIImageView
        tempImageView=UIImageView(image:UIImage(named: "wet doggo.png"))
        tempImageView.frame=originalRect
        view.addSubview(tempImageView)
        self.wetdog=tempImageView
        
        
    }


}

