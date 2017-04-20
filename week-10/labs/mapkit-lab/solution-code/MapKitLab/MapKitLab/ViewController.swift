//
//  ViewController.swift
//  MapKitLab
//
//  Created by Ezekiel Abuhoff on 7/20/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    // MARK: Properties
    
    @IBOutlet weak var mapView: MKMapView!
        
    // MARK: Actions
    
    @IBAction func mapTapped(_ recognizer: UITapGestureRecognizer) {
        let tapLocation = recognizer.location(in: mapView)
        let coordinate = mapView.convert(tapLocation, toCoordinateFrom: mapView)
        let annotation = Pin(coordinate: coordinate)
        mapView.addAnnotation(annotation)
    }
    
    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.setCenter(mapView.userLocation.coordinate, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

