//
//  ViewController.swift
//  UIAnimationLab
//
//  Created by Ezekiel Abuhoff on 7/19/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var firstDotWidth: NSLayoutConstraint!
    @IBOutlet weak var firstDotHeight: NSLayoutConstraint!
    
    @IBOutlet weak var secondDotWidth: NSLayoutConstraint!
    @IBOutlet weak var secondDotHeight: NSLayoutConstraint!
    
    @IBOutlet weak var thirdDotWidth: NSLayoutConstraint!
    @IBOutlet weak var thirdDotHeight: NSLayoutConstraint!
    
    @IBOutlet weak var fourthDotWidth: NSLayoutConstraint!
    @IBOutlet weak var fourthDotHeight: NSLayoutConstraint!
    
    // MARK: Actions
    
    @IBAction func animateButtonPressed(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.25, delay: 0.0, animations: {
            self.firstDotWidth.constant = 45
            self.firstDotHeight.constant = 45
            self.view.layoutIfNeeded()
            }) { (complete) in
                UIView.animate(withDuration: 1.0, animations: { 
                    self.firstDotWidth.constant = 30
                    self.firstDotHeight.constant = 30
                    self.view.layoutIfNeeded()
                })
        }
        
        UIView.animate(withDuration: 0.25, delay: 0.25, animations: {
            self.secondDotWidth.constant = 45
            self.secondDotHeight.constant = 45
            self.view.layoutIfNeeded()
        }) { (complete) in
            UIView.animate(withDuration: 1.0, animations: {
                self.secondDotWidth.constant = 30
                self.secondDotHeight.constant = 30
                self.view.layoutIfNeeded()
            })
        }
        
        UIView.animate(withDuration: 0.25, delay: 0.5, animations: {
            self.thirdDotWidth.constant = 45
            self.thirdDotHeight.constant = 45
            self.view.layoutIfNeeded()
        }) { (complete) in
            UIView.animate(withDuration: 1.0, animations: {
                self.thirdDotWidth.constant = 30
                self.thirdDotHeight.constant = 30
                self.view.layoutIfNeeded()
            })
        }
        
        UIView.animate(withDuration: 0.25, delay: 0.75, animations: {
            self.fourthDotWidth.constant = 45
            self.fourthDotHeight.constant = 45
            self.view.layoutIfNeeded()
        }) { (complete) in
            UIView.animate(withDuration: 1.0, animations: {
                self.fourthDotWidth.constant = 30
                self.fourthDotHeight.constant = 30
                self.view.layoutIfNeeded()
            })
        }
    }
    
    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

