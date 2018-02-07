//
//  FirstViewController.swift
//  iKid
//
//  Created by Yicheng Jiang on 2/6/18.
//  Copyright © 2018 Yicheng Jiang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var punContent: UILabel!
    @IBOutlet weak var punButton: UIButton!
    fileprivate var secondFlipView: SecondViewController!
    
    fileprivate func seconBuilder() {
        if secondFlipView == nil {
            secondFlipView =
                storyboard?
                    .instantiateViewController(withIdentifier: "punView")
                as! SecondViewController
        }
    }
    
    
    @IBAction func switchScreen(_ sender: UIButton) {
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        
        UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
        
        let buttonLabel = sender.titleLabel?.text
        if buttonLabel == "Next" {
            punContent.text = "the shower usually gets turned on.🚿"
            sender.setTitle("Back", for: .normal)
        }
        else {
            punContent.text = "When she gets naked in the bathroom,"
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

