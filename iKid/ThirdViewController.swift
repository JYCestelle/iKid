//
//  FirstViewController.swift
//  iKid
//
//  Created by Yicheng Jiang on 2/6/18.
//  Copyright © 2018 Yicheng Jiang. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var dadContent: UILabel!
    @IBOutlet weak var dadButton: UIButton!
    fileprivate var thirdFlipView: ThirdViewController!
    
    fileprivate func seconBuilder() {
        if thirdFlipView == nil {
            thirdFlipView =
                storyboard?
                    .instantiateViewController(withIdentifier: "punView")
                as! ThirdViewController
        }
    }
    
    
    @IBAction func switchScreen(_ sender: UIButton) {
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        
        UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
        
        let buttonLabel = sender.titleLabel?.text
        if buttonLabel == "Next" {
            dadContent.text = "It's fine, he woke up."
            sender.setTitle("Back", for: .normal)
        }
        else {
            dadContent.text = "Did you hear about the kidnapping at school?"
            sender.setTitle("Next", for: .normal)
        }
        UIView.commitAnimations()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


