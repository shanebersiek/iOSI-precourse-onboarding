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
        self.view.addSubview(self.imageView)
        self.imageView.frame = CGRect(x: 0, y: 0, width: self.imageView.image?.size.width ?? 0, height: self.imageView.image?.size.height ?? 0)
        self.imageView.center = self.view.center
    }
}

