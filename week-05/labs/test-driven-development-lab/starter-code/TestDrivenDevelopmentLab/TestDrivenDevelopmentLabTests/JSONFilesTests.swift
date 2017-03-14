//
//  JSONFilesTests.swift
//  TestDrivenDevelopmentLab
//
//  Created by Wellington Moreno on 7/14/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

@testable import TestDrivenDevelopmentLab
import XCTest

class JSONFilesTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
   
    func testColors() {
        guard let json = JSONFiles.colors
        else {
            XCTFail("JSON not loaded")
            return
        }
        
        XCTAssert(!json.isEmpty, "JSON is Empty")
    }
    
    func testFacebook() {
        XCTAssertNotNil(JSONFiles.facebook)
        XCTAssert(!JSONFiles.facebook!.isEmpty)
    }
    
    func testGoogleMaps() {
        XCTAssertNotNil(JSONFiles.googleMaps)
        XCTAssert(!JSONFiles.googleMaps!.isEmpty)
    }
    
    func testTwitter() {
        XCTAssertNotNil(JSONFiles.twitter)
        XCTAssert(!JSONFiles.twitter!.isEmpty)
    }
    
    func testYoutube() {
        XCTAssertNotNil(JSONFiles.youtube)
        XCTAssert(!JSONFiles.youtube!.isEmpty)
    }

}
