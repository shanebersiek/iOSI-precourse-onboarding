//
//  Microwave.swift
//  UnitTesting1Lab
//
//  Created by Wellington Moreno on 7/14/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation

class Microwave {
    
    public enum Exception : ErrorProtocol {
        case MicrowaveFullException
        case OversizedFoodException
    }
    
    let maxWeight = 50
    
    var foodInside: Food?
    
    func put(food: Food) throws {
        
        if self.foodInside != nil {
            throw Exception.MicrowaveFullException
        }
        
        guard food.weight <= self.maxWeight else {
            throw Exception.OversizedFoodException
        }
        
        self.foodInside = food
    }
    
    func open() -> Food? {
        
        guard var food = foodInside else { return nil }
        food.temperature += 3
        
        
        return food
    }
}
