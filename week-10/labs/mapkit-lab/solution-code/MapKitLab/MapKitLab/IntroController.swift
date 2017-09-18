//
//  IntroController.swift
//  MapKitLab
//
//  Created by Ezekiel Abuhoff on 7/20/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit
import CoreLocation

class IntroController: UIViewController, CLLocationManagerDelegate {
    
    // MARK: Properties
    
    let locationManager = CLLocationManager()
    
    // MARK: Actions
    
    @IBAction func okButtonPressed(_ sender: AnyObject) {
        locationManager.delegate = self
        if CLLocationManager.authorizationStatus() == .notDetermined {
            locationManager.requestWhenInUseAuthorization()
        } else if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            goToMap()
        }
    }

    // MARK: Location Manager
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            goToMap()
        }
    }
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        locationManager.delegate = self
    }
    
    // MARK: Navigation
    
    func goToMap() {
        performSegue(withIdentifier: "introToMapSegue", sender: nil)
    }
}
