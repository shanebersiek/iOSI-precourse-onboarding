//
//  WeatherDelegate.swift
//  IntermediateSwiftLab
//
//  Created by Wellington Moreno on 7/12/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation

protocol WeatherDelegate {
    
    func weatherDidUpdate(weatherStatus: WeatherStatus)
}
