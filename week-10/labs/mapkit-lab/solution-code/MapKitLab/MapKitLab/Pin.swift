//
//  Pin.swift
//  MapKitLab
//
//  Created by Ezekiel Abuhoff on 7/20/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import MapKit

class Pin: NSObject, MKAnnotation {
    
    // MARK: Properties
    
    var coordinate: CLLocationCoordinate2D
    
    // MARK: Initialization
    
    init(coordinate specifiedCoordinate: CLLocationCoordinate2D) {
        coordinate = specifiedCoordinate
    }
}
