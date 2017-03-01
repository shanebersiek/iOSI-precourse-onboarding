//
//  WeatherService.swift
//  IntermediateSwiftLab
//
//  Created by Wellington Moreno on 7/12/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation


class WeatherService {
    
    private var timer: Timer? = nil
    private var weatherStatus: WeatherStatus = WeatherStatus(temperature: 0, conditions: .Cloudy)
    private var goingUp = true
    
    var delegate: WeatherDelegate? {
        didSet {
            delegate?.weatherDidUpdate(weatherStatus: self.weatherStatus)
        }
    }
    
    private init() {
        timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true, block: self.checkWeather)
    }
    
    deinit {
        timer?.invalidate()
        timer = nil
    }
    
    static let instance = WeatherService()
    
    private func checkWeather(timer: Timer) {
        
        let newWeather = getNextWeatherStatus()
        self.weatherStatus = newWeather
        
        delegate?.weatherDidUpdate(weatherStatus: newWeather)
        
    }
    
    private func getNextWeatherStatus() -> WeatherStatus {
        
        let currentTemperature = weatherStatus.temperature
        
        var nextTemperature = currentTemperature
        var nextConditions = weatherStatus.conditions
        
        if goingUp {
            
            if currentTemperature >= 100 {
                goingUp = false
                nextTemperature = 99
            }
            else {
                nextTemperature += 1
            }
        }
        else { //Going Down
            
            if currentTemperature <= 0 {
                goingUp = true
                nextTemperature = 1
            }
            else {
                nextTemperature -= 1
            }
            
        }
        
        switch (nextTemperature % 4) {
        case 0 :
            nextConditions = .Sunny
            
        case 1 :
            nextConditions = .Rainy
            
        case 2 :
            nextConditions = .Cloudy
            
        case 3:
            nextConditions = .Overcast
            
        default :
            nextConditions = .Sunny
        }
        
        return WeatherStatus(temperature: nextTemperature, conditions: nextConditions)
    }
}
