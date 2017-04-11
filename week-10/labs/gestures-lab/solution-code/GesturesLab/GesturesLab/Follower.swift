//
//  Follower.swift
//  GesturesLab
//
//  Created by Ezekiel Abuhoff on 7/19/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class Follower: UILabel {
    
    // MARK: Properties
    
    var pan: UIPanGestureRecognizer = UIPanGestureRecognizer()
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        pan = UIPanGestureRecognizer(target: self, action: #selector(panHappened))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        pan = UIPanGestureRecognizer(target: self, action: #selector(panHappened))
    }
    
    // MARK: Gesture
    
    func panHappened() {
        let location = pan.location(ofTouch: 0, in: superview)
        center = location
    }
}
