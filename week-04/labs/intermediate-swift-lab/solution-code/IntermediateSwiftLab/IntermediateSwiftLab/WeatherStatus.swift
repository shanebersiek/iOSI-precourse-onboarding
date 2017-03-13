//
//  WeatherStatus.swift
//  IntermediateSwiftLab
//
//  Created by Wellington Moreno on 7/12/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation

class WeatherStatus {
    
    let temperature: Int
    let conditions: WeatherCondition
    
    init(temperature: Int, conditions: WeatherCondition) {
        self.temperature = temperature
        self.conditions = conditions
    }
    
    convenience init(weatherStatus: WeatherStatus) {
        self.init(temperature: weatherStatus.temperature, conditions: weatherStatus.conditions)
    }
}
