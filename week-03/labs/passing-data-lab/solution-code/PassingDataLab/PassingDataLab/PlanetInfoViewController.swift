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
    
    @IBOutlet weak var planetTitleLabel: UILabel!
    @IBOutlet weak var planetPhotoView: UIImageView!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var surfaceTemperatureLabel: UILabel!
    @IBOutlet weak var distanceFromTheSunLabel: UILabel!
    
    
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
        
        if let image = UIImage(named: planet.imageName) {
            planetPhotoView.image = image
        }
        
        planetTitleLabel.text = planet.name
        massLabel.text = planet.mass
        diameterLabel.text = planet.diameter
        surfaceTemperatureLabel.text = planet.surfaceTemperature
        distanceFromTheSunLabel.text = planet.distanceFromTheSun
        
    }
}
