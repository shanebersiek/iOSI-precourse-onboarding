//: Playground - noun: a place where people can play

import XCTest

func binarySearch(forValue value: Int, inArray array: Array<Int>) -> Bool {
    // TODO: Implement binary search through an array
    /* Binary search description:
     - Sort the array if it isn't already sorted (the array given to you here is not guaranteed to be sorted)
     - 1) Start in the middle of the array, compare that value to the search value
     - 2) Is the search value equal to the value you're looking for? Great!
     - 3) Is the search value less than what you're looking for? Eliminate all the values right (greater than) of the center, then repeat step 1 with the remaining sub-array.
     - 4) Is the search value greater than what you're looking for? Eliminate all the values left (less than) of the center, then repeat step 1 with the remaining sub-array.
     */
    
    return false
}

func mergeSortedArray(_ array: Array<Int>) -> Array<Int> {
    // TODO: Implement merge sort of this array
    /* Merge sort description:
     Merge sort takes advantage of a simple idea: Merging two already-sorted arrays into another sorted array can be done quite quickly. To do so, march through the two arrays, observing both sides index by index. If one side's index has the smaller of the values, append it to the array and increment the index. Othewise, append the other side's index and increment it. 
     This, combined with the fact that all arrays of size one are sorted, can give us quite an efficient sorting algorithm. To merge-sort:
     - If the array's count is less than 2, success! It's already sorted
     - Otherwise, divide the given array into two sides, left and right
     - Recursively sort the let and right sides
     - Merge the results of the two sorted arrays into a combined sorted array
     
     Hint: Using a helper function/closure that merges a left side and a right side into one array
     */
    
    return array
}

// Uncomment the below tests to verify your work.
class MyTests : XCTestCase {
    func tests() {
        let integers = [1, 3, 4, 1, 0, 10, 22, 1, 1, -2, 10]
//        XCTAssertEqual(integers.sorted(), mergeSortedArray(integers))
//        XCTAssertNotEqual(integers, mergeSortedArray(integers))
//        XCTAssertTrue(binarySearch(forValue: 1, inArray: integers))
//        XCTAssertTrue(binarySearch(forValue: 0, inArray: integers))
//        XCTAssertTrue(binarySearch(forValue: 22, inArray: integers))
//        XCTAssertTrue(binarySearch(forValue: -2, inArray: integers))
//        XCTAssertFalse(binarySearch(forValue: -3, inArray: integers))
//        XCTAssertTrue(binarySearch(forValue: 10, inArray: integers))
    }
}

struct TestRunner {
    func runTests(testClass:AnyClass) {
        let tests = testClass as! XCTestCase.Type
        let testSuite = tests.defaultTestSuite()
        testSuite.run()
        let run = testSuite.testRun as! XCTestSuiteRun
        
        print("\(run.totalFailureCount) failures")
    }
}

TestRunner().runTests(testClass: MyTests.self)
