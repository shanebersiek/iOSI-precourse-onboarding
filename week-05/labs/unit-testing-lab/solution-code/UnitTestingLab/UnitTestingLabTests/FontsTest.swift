//
//  UnitTesting1LabTests.swift
//  UnitTesting1LabTests
//
//  Created by Wellington Moreno on 7/14/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import XCTest
@testable import UnitTestingLab

class FontsTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUbuntu() {
        
        XCTAssertNotNil(Fonts.ubuntu)
    }
    
    func testUbuntuFunction() {
        
        for fontSize in (8...100) {
            XCTAssertNotNil(Fonts.ubuntu(withSize: fontSize), "Failed to load font with size: \(fontSize)")
        }
    }
    
}
