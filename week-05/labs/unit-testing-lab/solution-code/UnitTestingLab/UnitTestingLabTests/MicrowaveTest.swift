//
//  MicrowaveTest.swift
//  UnitTesting1Lab
//
//  Created by Wellington Moreno on 7/14/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

@testable import UnitTestingLab
import XCTest

class MicrowaveTest: XCTestCase {
    
    var microwave: Microwave!
    var food: Food!
    
    override func setUp() {
        super.setUp()
        
        microwave = Microwave()
        food = Food(name: "Banana", weight: 10, temperature: 40)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPutOverweightItem() {
        let maxWeight = microwave.maxWeight
        let overweightFood = Food(name: "Cake", weight: maxWeight * 2, temperature: 10)
        
        do {
            try microwave.put(food: overweightFood)
            XCTFail("Expected Exception here")
        }
        catch let ex as Microwave.Exception where ex == .OversizedFoodException {
            print("The Food is oversized, as expected.")
        }
        catch let ex {
            XCTFail("Unexpected Error: \(ex)")
        }
        
    }
    
    func testPutFoodWhenSomethingAlreadyInside() {
        
        try! microwave.put(food: food)
        
        let ramen = Food(name: "Ramen", weight: 5, temperature: 70)
        
        do {
            try microwave.put(food: ramen)
            XCTFail("Expected Exception here")
        }
        catch let ex as Microwave.Exception where ex == .MicrowaveFullException {
            print("The Mircowave can only take one item at a time, as expected")
        }
        catch let ex {
            XCTFail("Unexpected Error: \(ex)")
        }
    }
    
    func testFoodIsProperlyCooked() {
        
        let temperatureBefore = food.temperature
        
        try! microwave.put(food: food)
        
        let result = microwave.open()!
        let temperatureAfter = result.temperature
        
        XCTAssert(temperatureAfter > temperatureBefore, "Temperature did not increase in Microwave!")
        
    }
    
    func testOpenWithNothingInside() {
        
        let result = microwave.open()
        
        XCTAssertNil(result)
    }
    
}
