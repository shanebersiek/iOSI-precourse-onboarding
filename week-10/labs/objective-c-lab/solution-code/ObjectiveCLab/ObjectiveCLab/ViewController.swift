//
//  ViewController.swift
//  ObjectiveCLab
//
//  Created by Ezekiel Abuhoff on 7/26/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var speechLabel: UILabel!
    
    let profile = GAProfile.newProfile(withName: "Frank", favoriteFood: "frankfurters")!
    let motionReporter = GAMotionReporter()
    
    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = profile.name
        speechLabel.text = profile.introduction()
        
        motionReporter.startLoggingGyroData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

