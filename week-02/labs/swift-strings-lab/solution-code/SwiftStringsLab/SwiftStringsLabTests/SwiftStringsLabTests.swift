//
//  SwiftStringsLabTests.swift
//  SwiftStringsLabTests
//
//  Created by Ezekiel Abuhoff on 7/18/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import XCTest
@testable import SwiftStringsLab

class SwiftStringsLabTests: XCTestCase {
    
    // MARK: Tests
    
    func testStringReversal() {
        let reversedString = StringManipulation.reverse(string: "Saitama")
        XCTAssert(reversedString == "amatiaS")
    }
    
    func testCharacterIteration() {
        let indicesAndCharacters = StringManipulation.characterIndicesFor(string: "Genos")
        XCTAssert(indicesAndCharacters == "0G1e2n3o4s")
    }
    
    func testSentenceSplitting() {
        let splitWords = StringManipulation.wordsFrom(sentence: "Immense power is pretty boring.")
        XCTAssert(splitWords == ["Immense","power","is","pretty","boring."])
    }
    
    func testWordLengthFiltering() {
        let filteredSentence = StringManipulation.longWordsIn(sentence: "I'm a hero for fun.")
        XCTAssert(filteredSentence == ["hero","fun."])
    }
    
    func testSentenceComposition() {
        let sentence = StringManipulation.composeSentenceFrom(words: ["Train","every","day."])
        XCTAssert(sentence == "Train every day.")
    }
    
    // MARK: Setup and Teardown
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}
