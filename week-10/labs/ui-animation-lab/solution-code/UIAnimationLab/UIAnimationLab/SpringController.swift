//
//  SpringController.swift
//  UIAnimationLab
//
//  Created by Ezekiel Abuhoff on 7/19/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class SpringController: UIViewController {
    
    // MARK: Properties
        
    @IBOutlet weak var springView1: SpringView!
    @IBOutlet weak var springView2: SpringView!
    @IBOutlet weak var springView3: SpringView!
    @IBOutlet weak var springView4: SpringView!
    
    // MARK: Actions
    
    @IBAction func springButtonPressed(_ sender: AnyObject) {
        springView1.animate()
        springView2.animate()
        springView3.animate()
        springView4.animate()
    }
    
}
