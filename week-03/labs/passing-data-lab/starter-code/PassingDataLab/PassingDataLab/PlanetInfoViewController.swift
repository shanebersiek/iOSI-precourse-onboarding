//
//  PlanetInfoViewController.swift
//  PassingDataLab
//
//  Created by Wellington Moreno on 7/5/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import UIKit

class PlanetInfoViewController : UIViewController {
    
    var planet: Planet!
    
    override func viewDidLoad() {
        
        guard planet != nil else {
            print("Planet not properly set")
            self.dismiss()
            return
        }
        
        setPlanetInfo()
    }
    
    private func dismiss() {
        self.navigationController?.popViewController(animated: true)
    }
    
    private func setPlanetInfo() {
        
    }
}
