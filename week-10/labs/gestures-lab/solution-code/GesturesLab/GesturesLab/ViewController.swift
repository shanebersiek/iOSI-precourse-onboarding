//
//  ViewController.swift
//  GesturesLab
//
//  Created by Ezekiel Abuhoff on 7/19/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var follower: Follower!
    
    var followerSizeBasis = CGSize()
    
    // MARK: Actions
    
    @IBAction func handlePan(recognizer:UIPanGestureRecognizer) {
        let translation = recognizer.translation(in: self.view)
        if let view = recognizer.view {
            view.center = CGPoint(x:view.center.x + translation.x,
                                  y:view.center.y + translation.y)
        }
        recognizer.setTranslation(CGPoint.zero, in: self.view)
    }
    
    @IBAction func handlePinch(recognizer:UIPinchGestureRecognizer) {
        let scale = recognizer.scale
        if recognizer.state == .began {
            followerSizeBasis = follower.frame.size
        }
        
        let startingWidth = followerSizeBasis.width
        let startingHeight = followerSizeBasis.height
        let startingCenter = follower.center
        
        let newWidth = startingWidth * scale
        let newHeight = startingHeight * scale
        
        follower.frame.size = CGSize(width: newWidth, height: newHeight)
        follower.center = startingCenter
        
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
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            let reversedText = String(follower.text!.characters.reversed())
            follower.text = reversedText
        }
    }
}

