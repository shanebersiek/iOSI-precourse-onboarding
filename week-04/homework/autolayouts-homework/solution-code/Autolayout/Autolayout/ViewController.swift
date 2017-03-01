//
//  ViewController.swift
//  Autolayout
//
//  Created by Rudd Taylor on 8/14/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLeft: UIView!
    @IBOutlet weak var bottomLeft: UIView!
    @IBOutlet weak var bottomRight: UIView!
    @IBOutlet weak var topRight: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        [self.topLeft, self.bottomRight, self.bottomLeft, self.topRight].forEach { $0.layer.borderColor = UIColor.gray.cgColor }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

