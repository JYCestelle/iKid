//
//  FirstViewController.swift
//  iKid
//
//  Created by Yicheng Jiang on 2/6/18.
//  Copyright © 2018 Yicheng Jiang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var goodContent: UILabel!
    @IBOutlet weak var goodButton: UIButton!
    fileprivate var firstFlipView: FirstViewController!
    
    fileprivate func firstBuilder() {
        if firstFlipView == nil {
            firstFlipView =
                storyboard?
                    .instantiateViewController(withIdentifier: "goodView")
                as! FirstViewController
        }
    }
    
    
    @IBAction func switchScreen(_ sender: UIButton) {
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        
        UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
        
        let buttonLabel = sender.titleLabel?.text
        if buttonLabel == "Next" {
            goodContent.text = "OMG!!!!!!! BREATHE!! BREATHEEEEE!!!!!😱"
            sender.setTitle("Back", for: .normal)
        }
        else {
            goodContent.text = "What did the green grape say to the purple grape?🍇"
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
