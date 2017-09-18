//
//  FilesTest.swift
//  FoundationClassesLab
//
//  Created by Wellington Moreno on 7/22/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import XCTest
@testable import FoundationClassesLab

class FilesTest : XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNumbers() {
        
        XCTAssert(!Files.numbers.isEmpty)
    }
    
    func testDoubles() {
        
        XCTAssert(!Files.doubles.isEmpty)
    }
    
    func testTimes() {
        
        XCTAssert(!Files.times.isEmpty)
    }
    
}
