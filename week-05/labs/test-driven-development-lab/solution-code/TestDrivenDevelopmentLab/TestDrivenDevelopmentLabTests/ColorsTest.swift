//
//  ColorsTest.swift
//  TestDrivenDevelopmentLab
//
//  Created by Wellington Moreno on 7/14/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

@testable import TestDrivenDevelopmentLab
import XCTest

class ColorsTest: XCTestCase {
    
    
    
    let expectedColors: [Color] = [
        Color(name: "red", hex: "#f00"),
        Color(name: "green", hex: "#0f0"),
        Color(name: "blue", hex: "#00f"),
        Color(name: "cyan", hex: "#0ff"),
        Color(name: "magenta", hex: "#f0f"),
        Color(name: "yellow", hex: "#ff0"),
        Color(name: "black", hex: "#000")
    ]

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testFromJson() {
        
        let json = JSONFiles.colors!
        
        let expectedColorNames = expectedColors.map() { $0.name }
        
        let colorNames = Colors.colorName(fromJson: json)
        
        XCTAssert(!colorNames.isEmpty)
        XCTAssert(colorNames.count == expectedColorNames.count)
        XCTAssert(expectedColors.contains({ expectedColorNames.contains($0.name) }))
    }
    
    func testHexForColorName() {
        
        let json = JSONFiles.colors!
        
        let expected: [String : Color] = {
           
            var map: [String : Color] = [:]
            
            for color in expectedColors {
                map[color.name] = color
            }
            return map
        }()
        
        for (colorName, color) in expected {
            
            let result = Colors.hexValue(forColorWithName: colorName, fromJson: json)
            XCTAssert(result == color.hex)
        }
    }

}
