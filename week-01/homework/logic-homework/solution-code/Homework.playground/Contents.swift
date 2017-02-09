//: Playground - noun: a place where people can play

import XCTest

// This homework involves two bits of new syntax: using a for loop to iterate over a 'collection', and getting the next index from an existing index

// Here's a collection of integers
let zeroToTen = 0...10 // This is a collection of all the integers from 0 to 10, inclusive
// Let's say we want to do something with each of these variables. Easy! Just use the 'for' loop
for number in zeroToTen {
    print(number)
} // This loop prints the numbers 0 through 10

for number in 0...10 {
    print(number)
} // This loop is the same as the above, we just defined the collection inline with the for loop

for character in "hi!".characters {
    print(character)
} // Here we're doing the same thing with characters

// Here's how we get a count from a collection
let numberCount = zeroToTen.count
print(numberCount) // Prints 11

// That's how we iterate over an entire collection. What if we just want one variable from a collection at a time? For now, we'll use this syntax:
let string = "Hey!"
let firstCharacterIndex = string.characters.startIndex
let lastCharacterIndex = string.characters.endIndex
print(string.characters[firstCharacterIndex])

let secondCharacterIndex = string.index(after: firstCharacterIndex)
print(string.characters[secondCharacterIndex])

let thirdCharacterIndex = string.index(after: secondCharacterIndex)
print(string.characters[thirdCharacterIndex])

// Here's how we uppercase a character
let firstCharacter = string.characters[firstCharacterIndex]
let uppercaseFirstCharacter = String(firstCharacter).uppercased()

// TODO: Write a for loop that capitalizes the above string by iterating over its characters.
var lowercaseString = "i love general assembly!!"
var uppercaseString = ""

for character in lowercaseString.characters {
    uppercaseString += String(character).uppercased()
}

// TODO: Write a while loop that does the same thing as the above. First capture the startIndex of lowercaseString, then use index.successor() to get the next one
var uppercaseWhileString = ""
var index = lowercaseString.characters.startIndex

while index != lowercaseString.characters.endIndex {
    let character = lowercaseString[index]
    uppercaseWhileString += String(character).uppercased()
    index = lowercaseString.index(after: index)
}
print(uppercaseWhileString)


// Bonus TODO: Print out all two-digit combinations of 0-9 (e.g. 00, 01, 02... 10, 11, 12.. 90, 91, 92... 99). Repeats are allowed, use a for loop within a for loop. numbersString should take the format: 000102030405060708091011121314... See the unit test below for the expected result.
var numbersString = ""
for i in 0...9 {
    for j in 0...9 {
        numbersString += "\(i)\(j)"
    }
}
print(numbersString)

class MyTests : XCTestCase {
    func tests() {
                XCTAssertEqual(uppercaseString, "I LOVE GENERAL ASSEMBLY!!")
                XCTAssertEqual(uppercaseWhileString, "I LOVE GENERAL ASSEMBLY!!")
        // Bonus:
                XCTAssertEqual(numbersString, "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")
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
