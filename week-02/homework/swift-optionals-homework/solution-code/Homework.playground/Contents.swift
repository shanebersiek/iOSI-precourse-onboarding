//: Playground - noun: a place where people can play

import XCTest

// In this homework we'll encounter and learn how to use optional values

var hiString = "hi there!" // This value isn't optional. It must always be a String, but it can be changed, as evidenced below:
hiString = "hello there!"

// We cannot, however, set it to 'nil'. 'nil' is different than an empty string. It means that the value doesn't exist at all.
// Uncomment the below line to see the error
//hiString = nil

// Some time, though, we want values to be optional. For example, let's say you were asking for user input about something that wasn't required, like their age.
// We might want to make that value optional, to signify that it is not required that the user set it
var age: Int? = nil // We must specify the type when setting something to nil, otherwise Swift won't know what type it is. 
age = 21 // We can set this equal to a real value
print(age) // Notice how this prints oddly? It's because the underlying value is Optional.
age = nil // or we can set the value back to nil.
print(age)

// If we want to 'unwrap' the value and make it not optional, we can use 'if let'
if let age = age {
    print(age)
} // 'age' is only non optional within these braces

// If we want to access an optional value's property, we must use ? after it
print(age?.advanced(by: 1))
if let age = age {
    print(age.advanced(by: 1)) // Now the value is not optional, because we used 'if let' to unwrap it
}

// Let's try this with an array:
// TODO: Create an optional array of integers called 'integers'

var integers: [Int]?

// TODO: Set it equal to the numbers 0 through 5 inclusive, then set integersCount equal to its count. Use if let.
var integersCount = 0

integers = [0,1,2,3,4,5]
if let integers = integers {
    integersCount = integers.count
}

// TODO: Append the value '6' to integers. Do not use if let to do so.
integers?.append(6)

// Bonus TODO: Research guard let, use it to unwrap integers, then set guardIntegersCount equal to its count
var guardIntegersCount = 0

guard let guardIntegers = integers else { fatalError() }
guardIntegersCount = guardIntegers.count

// Uncomment the below tests to verify your work.
class MyTests : XCTestCase {
    func tests() {
        if let integers = integers {
            XCTAssertEqual(integers, [0,1,2,3,4,5,6])
        }
        XCTAssertEqual(integersCount, 6)
//         Bonus:
        XCTAssertEqual(guardIntegersCount, 7)
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
