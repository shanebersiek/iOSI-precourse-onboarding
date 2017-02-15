//: Playground - noun: a place where people can play

import UIKit

//=====================================
//MARK: Library
//=====================================

extension Int {
    
    func isEven() -> Bool {
        return self.isDivisibleBy(2)
    }
    
    func isDivisibleBy(_ number: Int) -> Bool {
        return self % number == 0
    }
}

func randomInt(from: Int = 0, to: Int = 100) -> Int {
    
    guard from < to else { return 0 }
    
    let distance = to - from
    
    let randomValue = arc4random_uniform(UInt32(distance))
    let result: Int = from + Int(randomValue)
    
    return result > to ? to : result
}

func randomIntOptional() -> Int? {
    
    let int = randomInt(from: 20, to: 2000)
    
    if int.isDivisibleBy(10) {
        return nil
    }
    
    if int.isDivisibleBy(3) {
        return nil
    }
    
    return int
}

func randomBoolean() -> Bool {
    let integer = randomInt()
    
    return integer.isEven()
}

func randomString() -> String {
    
    let intOne = randomInt(from: 1000, to: 999999)
    let intTwo = randomInt(from: 100, to: 9999)
    
    return "\(intOne) - \(intTwo)"
}

func randomStringOptional() -> String? {
    
    let intOne = randomInt(from: 0, to: 9999999)
    
    if intOne.isDivisibleBy(3) || intOne.isDivisibleBy(8) {
        return nil
    }
    
    let intTwo = randomInt()
    
    return "\(intOne) - \(intTwo)"
}

func randomArrayOfInts() -> [Int] {
    
    let count = randomInt(from: 10, to: 1000)
    
    var array: [Int] = []
    
    for _ in 1...count {
        array.append(randomInt(from: 0, to: 1000))
    }
    
    return array
}

func randomArrayOfIntOptionals() -> [Int?] {
    
    let count = randomInt(from: 100, to: 1000)
    
    var array: [Int?] = []
    
    for _ in 1...count {
        array.append(randomIntOptional())
    }
    
    return array
}

func randomArrayOfStringOptionals() -> [String?] {
    
    let count = randomInt(from: 100, to: 1000)
    
    var array: [String?] = []
    
    for _ in 1...count {
        array.append(randomStringOptional())
    }
    
    return array
}

//=====================================
//MARK: Exercises - Writing Type-Safe Code
//=====================================

//NOTE: Use these arrays with your functions

let integers = randomArrayOfIntOptionals()
let strings = randomArrayOfStringOptionals()

//=====================================


//Exercise 1:
//Write a function that takes an Array of Int? and returns their sum

func sumOf(_ integers: [Int?]) -> Int {
    
    var sum = 0
    
    for i in integers {
        if let number = i {
            sum += number
        }
    }
    
    return sum
}
sumOf(integers)

//Exercise 2:
//Write a function that takes an Array of Int? and returns their average. Don't count nil values.

func averageOf(_ integers: [Int?]) -> Double {
    
    var sum = 0
    var count = 0
    
    for i in integers {
        
        guard let i = i else { continue }
        
        sum += i
        count += 1
    }
    
    return Double(sum) / Double(count)
}

averageOf(integers)

//Exercise 3:
//Write a function that takes an Array of Int? and returns their average. Count nils as 0.

func averageCountingNils(of integers: [Int?]) -> Double {
    
    var sum = 0.0
    var count = 0.0
    
    for i in integers {
        
        if let i = i {
            sum += Double(i)
        }
        
        count += 1
    }
    
    return sum / count
}

averageCountingNils(of: integers)

//Exercise 4:
//Write a function that takes two Strings and checks if they are equal.

func areEqual(stringOne: String?, stringTwo: String?) -> Bool {
    
    if let one = stringOne, let two = stringTwo {
        return one == two
    }
    
    return stringOne == nil && stringTwo == nil
}

areEqual(stringOne: randomStringOptional(), stringTwo: randomStringOptional())

//Exercise 5:
//Write a function that takes an Array of String? and creates a new string that joins
//them. If the string is an optional, substitute it for an '_'.
//For example: ["M", nil, "Kay", nil, "Tray"] -> "M_Kay_Tray"

func joinStrings(_ strings: [String?]) -> String {
    
    var result = ""
    
    for string in strings {
        
        if let string = string {
            result += string
        }
        else {
            result += "_"
        }
        
    }
    
    return result
}
joinStrings(strings)

//Exercise 5:
//Write a function that takes a String and an Array of String?
//This function checks whether the array contains the specified String

func containsString(array: [String?], string: String) -> Bool {
    
    for case let element in array {
        
        if element == string {
            return true
        }
    }
    
    return false
}

containsString(array: strings, string: randomString())

//Exercise 6:
//Write a function that takes an Array of String? and returns the number of elements
//that are not nil.
func totalNonNil(strings: [String?]) -> Int {
    
    return strings
        .filter() { string in  string != nil}
        .count
}


//Exercise 7:
//Write a function that takes an Array of String? and returns the number of elements
//that are nil.

func totalNil(in strings: [String?]) -> Int {
    
    var total = 0
    
    for string in strings where string == nil {
        total += 1
    }
    
    return total
}
totalNil(in: strings)

//Exercise 8:
//Write a function that takes a String? and return a String such that
//if the String argument is nil, return the empty string ""
//otherwise return the string itself
//For example: "Glasses" -> "Glasses" , nil -> ""

func nullToEmpty(string: String?) -> String {
    return string ?? ""
}

//=====================================
//MARK: Exercises - Fixing Type-Unsafe Code
//=====================================

//Exercise 9:
//Fix this function

func addTwoNumbers(_ one: Int?, _ two: Int?) -> Int {
    
    return (one ?? 0) + (two ?? 0)
}

_ = {
    let one = randomIntOptional()
    let two = randomIntOptional()
    
    
    let result = addTwoNumbers(one, two)
    print("\(one) + \(two) = \(result)")
}()


//Exercise 10:
//Fix this function
func numberOfCharacters(inString string: String?) -> Int {
    return string?.characters.count ?? 0
}

//Exercise 11:
//Rewrite this function to use Optional Binding
func alternativeNumberOfCharacters(inString string: String?) -> Int {
    
    if let string = string {
        return string.characters.count
    }
    else {
        return 0
    }
}

//Exercise 12:
//Rewrite this function to use a guard statement
func squareOf(number: Int?) -> Int {
    
    guard let number = number
    else { return 0 }
    
    return number * number
}

//Exercise 13:
//Rewrite this function to use Optional Chaining and the '??' operator
func sizeOf(array: [AnyObject?]?) -> Int {
    
    return array?.count ?? 0
    
}


//=====================================
//MARK: Bonus
//=====================================


let objects: [AnyObject?] = {
    
    var array: [AnyObject?] = []
    
    let strings = randomArrayOfStringOptionals()
        .map({ s in s as? AnyObject })
    
    array += strings
    
    let numbers = randomArrayOfIntOptionals()
        .map({ s in s as? AnyObject })
    array += numbers
    
    return array
}()


//Exercise 14:
//Write a function that takes an Array of AnyObject? and returns the number of Strings present

func numberOfStrings(inArray array: [AnyObject?]) -> Int {
    
    var total = 0
    
    for element in array {
        
        if let _ = element as? String {
            total += 1
        }
    }
    
    return total
}
numberOfStrings(inArray: objects)

//Exercise 15:
//Write a function that takes an Array of AnyObject? and returns the sum of all the integers

func numberOfIntegers(inArray array: [AnyObject?]) -> Int {
    
    var total = 0
    
    for case let number in array where number is Int {
        total += 1
    }
    
    return total
}
numberOfIntegers(inArray: objects)

//Exercise 16:
//Write a function that takes a number and an Array of AnyObject?
//and returns true if the array contains the number,
//false otherwise
func containsNumber(number: Int, array: [AnyObject?]) -> Bool {
    
    for case let element as Int in array {
        
        if element == number {
            return true
        }
    }
    
    return false
}
containsNumber(number: randomInt(), array: objects)


//Exercise 17:
//Write a function that takes an Array of AnyObject?
//and returns a single String that joins all of the elements
//while ignoring nil values

func joinStrings(_ array: [AnyObject?]) -> String {
    
    var result = ""
    for case let element as AnyObject in array {
        result += "\(element)"
    }
    
    return result
}
joinStrings(objects)
