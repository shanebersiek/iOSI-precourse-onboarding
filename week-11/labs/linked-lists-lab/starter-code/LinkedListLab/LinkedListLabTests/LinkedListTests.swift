//
//  LinkedListLabTests.swift
//  LinkedListLabTests
//
//  Created by Wellington Moreno on 10/16/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import AlchemyGenerator
import XCTest
@testable import LinkedListLab

class LinkedListTests: XCTestCase
{
    
    private var array: [Int] = []
    private var list: LinkedList<Int>! = nil
    
    override func setUp()
    {
        array = AlchemyGenerator.array(ofSize: 10, withCreator: AlchemyGenerator.positiveInteger)
        list = LinkedList<Int>()
    }
    
    func testWhenEmpty()
    {
        XCTAssertTrue(list.isEmpty)
    }
    
    
    func testArrayInitializer()
    {
        list = LinkedList<Int>(array: array)
        XCTAssertFalse(list.isEmpty)
        XCTAssertEqual(list.count(), array.count)
    }
    
    func testArrayInitializerWhenEmpty()
    {
        list = LinkedList<Int>(array: [])
        XCTAssertTrue(list.isEmpty)
    }
    
    func testContains()
    {
        list.appendAll(array: array)
        let any = AlchemyGenerator.anyOf(array)!
        XCTAssertTrue(list.contains(any))
    }
    
    func testAppend()
    {
        XCTAssertTrue(list.isEmpty)
        list.append(element: AlchemyGenerator.Integers.positive)
        XCTAssertFalse(list.isEmpty)
    }
    
    func testAppendArray()
    {
        list.appendAll(array: array)
        XCTAssertEqual(list.count(), array.count)
    }
    
    func testPrepend()
    {
        XCTAssertTrue(list.isEmpty)
        list.prepend(element: AlchemyGenerator.Integers.positive)
        XCTAssertFalse(list.isEmpty)
    }
    
    func testAsArray()
    {
        list.appendAll(array: array)
        let result = list.asArray
        
        XCTAssertEqual(result, array)
    }
    
    func testReversed()
    {
        list.appendAll(array: array)
        
        let expected = Array(array.reversed())
        list.reverse()
        
        let result = list.asArray
        XCTAssertEqual(result, expected)
    }
}
