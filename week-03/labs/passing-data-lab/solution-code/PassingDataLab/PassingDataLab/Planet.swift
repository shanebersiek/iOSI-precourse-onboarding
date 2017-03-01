//
//  Planet.swift
//  PassingDataLab
//
//  Created by Wellington Moreno on 7/5/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation

struct Planet {
    
    let name: String
    let imageName: String
    let mass: String
    let diameter: String
    let surfaceTemperature: String
    let distanceFromTheSun: String
 
    
    static let planets: [Planet] = [
        
        Planet(name: "Mercury", imageName: "Mercury", mass: "3.29 e23 Kilograms", diameter: "4,879 Kilometers", surfaceTemperature: "427 Celsius", distanceFromTheSun: "70 Million Kilometers"),
        
        Planet(name: "Venus", imageName: "Venus", mass: "4.87 e24 Kilograms", diameter: "12,104 Kilometers", surfaceTemperature: "462 Celsius", distanceFromTheSun: "109 Million Kilometers"),
        
        Planet(name: "Earth", imageName: "Earth", mass: "5.97 e24 Kilograms", diameter: "12,756 Kilometers", surfaceTemperature: "58 Celsius", distanceFromTheSun: "152 Million Kilometers"),
        
        Planet(name: "Mars", imageName: "Mars", mass: "6.39 e23 Kilograms", diameter: "6,792 Kilometers", surfaceTemperature: "-5 Celsius", distanceFromTheSun: "249 Million Kilometers"),
        
        Planet(name: "Jupiter", imageName: "Jupiter", mass: "1.90 e27 Kilograms", diameter: "142,984 Kilometers", surfaceTemperature: "-108 Celsius", distanceFromTheSun: "817 Million Kilometers"),
        
        Planet(name: "Saturn", imageName: "Saturn", mass: "5.68 e26 Kilograms", diameter: "120,536 Kilometers", surfaceTemperature: "-129 Celsius", distanceFromTheSun: "938 Million Kilometers"),
        
        Planet(name: "Uranus", imageName: "Uranus", mass: "8.68 e25 Kilograms", diameter: "51,118 Kilograms", surfaceTemperature: "-192 Celsius", distanceFromTheSun: "3 Billion Kilometers"),
        
        Planet(name: "Neptune", imageName: "Neptune", mass: "1.02 e26 Kilograms", diameter: "49,528 Kilometers", surfaceTemperature: "-201 Celsius", distanceFromTheSun: "4.5 Billion Kilometers")
        
    ]
}