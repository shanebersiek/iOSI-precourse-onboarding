//
//  ViewController.swift
//  Gestures
//
//  Created by Rudd Taylor on 9/6/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    let imageView = UIImageView(image: UIImage(named: "ga"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.isUserInteractionEnabled = true
        self.imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapImage)))
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(didPinchImage))
        pinch.delegate = self
        self.imageView.addGestureRecognizer(pinch)
        self.imageView.addGestureRecognizer(UIRotationGestureRecognizer(target: self, action: #selector(didRotateImage)))
        self.view.addSubview(self.imageView)
        self.imageView.frame = CGRect(x: 0, y: 0, width: self.imageView.image?.size.width ?? 0, height: self.imageView.image?.size.height ?? 0)
        self.imageView.center = self.view.center
    }
    
    func didTapImage() {
        self.imageView.layer.borderColor = UIColor.red.cgColor
        if self.imageView.layer.borderWidth > 0 { // Selected
            self.imageView.layer.borderWidth = 0
        } else {
            self.imageView.layer.borderWidth = 2
        }
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
    func adjustAnchorPointForGestureRecognizer(_ gesture: UIGestureRecognizer) {
        if let view = gesture.view , gesture.state == .began {
            let locationInView = gesture.location(in: view)
            let locationInSuperview = gesture.location(in: view.superview)
            view.layer.anchorPoint = CGPoint(x: locationInView.x / view.bounds.size.width, y: locationInView.y / view.bounds.size.height)
            view.center = locationInSuperview
        }
    }
    
    func didRotateImage(_ rotate: UIRotationGestureRecognizer) {
        self.adjustAnchorPointForGestureRecognizer(rotate)
        if rotate.state == .began || rotate.state == .changed {
            self.imageView.transform = self.imageView.transform.rotated(by: rotate.rotation)
            rotate.rotation = 0
        }
    }
    
    func didPinchImage(_ pinch: UIPinchGestureRecognizer) {
        self.adjustAnchorPointForGestureRecognizer(pinch)
        if pinch.state == .began || pinch.state == .changed {
            self.imageView.transform = self.imageView.transform.scaledBy(x: pinch.scale, y: pinch.scale)
            pinch.scale = 1
        }
    }
}

