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

func randomBoolean() -> Bool {
    let integer = randomInt()
    
    return integer.isEven()
}

func randomString() -> String {
    
    let intOne = randomInt(from: 1000, to: 999999)
    let intTwo = randomInt(from: 100, to: 9999)
    
    return "\(intOne) - \(intTwo)"
}

func randomArrayOfInts(ofSize size: Int = randomInt(from: 10, to: 1000)) -> [Int] {
    
    var array: [Int] = []
    
    for _ in 1...size {
        array.append(randomInt(from: 0, to: 1000))
    }
    
    return array
}

func randomArrayOfStrings() -> [String] {
    
    let count = randomInt(from: 10, to: 1000)
    
    var array: [String] = []
    
    for _ in 1...count {
        array.append(randomString())
    }
    
    return array
}


//=====================================
//MARK: Basic Exercises
//=====================================

//NOTE: You can use these arrays with your functions or create your own

let integers = randomArrayOfInts()
let strings = randomString()


func arrayOfSize(size: Int) -> [Int] {
    
    guard size > 0 else { return [] }
    
    var array: [Int] = []
    
    for _ in 1...size {
        array.append(randomInt())
    }
    
    return array
    
}
arrayOfSize(size: 10)

func numbersUpTo(number: Int) -> [Int] {
    
    guard number > 0 else { return [] }
    
    var array: [Int] = []
    
    for i in 1...number {
        array.append(i)
    }
    
    return array
}

numbersUpTo(number: 15)

func numbersBetween(from min: Int, to max: Int) -> [Int] {
    
    guard min > 0 && min < max else { return [] }
    
    var array: [Int] = []
    
    for i in min...max {
        array.append(i)
    }
    
    return array
}

numbersBetween(from: 10, to: 30)

func swapFirstAndLast(numbers: [Int]) -> [Int] {
    
    var result = numbers
    
    guard let first = result.first, let last = result.last
    else {
        return numbers
    }
    
    result[result.startIndex] = last
    result[result.endIndex] = first
    
    return result
}

func doubleMultiplesOfFive(numbers: [Int]) -> [Int] {
    
    var result = numbers
    
    for (index, value) in numbers.enumerated() {
        
        if value.isDivisibleBy(5) {
            result[index] = value * 2
        }
    }
    
    return result
}



//=====================================
//MARK: String Exercises
//=====================================

func combineStrings(_ strings: [String]) -> String {
    
    var result = ""
    
    for string in strings {
        result += string
    }
    
    return result
}

combineStrings(["General", " Assembly. ", "Not the", "UN."])

func repeatString(string: String, times: Int) -> [String] {
    return Array(repeating: string, count: times)
}

repeatString(string: "Xo", times: 3)

func toLowerCase(_ strings: [String]) -> [String] {
    
    return strings.map() { $0.lowercased() }
}

toLowerCase(["I LIKE", "WRI", "TING", "IN A", "LL CAP", "S"])

func reverse(strings: [String]) -> [String] {
    
    var result: [String] = []
    
    //Start at the end
    var index = strings.count - 1
    
    while index >= 0 {
        result.append(strings[index])
        
        //Don't forget to decrement
        index -= 1
    }
    
    return result
}

reverse(strings: ["The", "Cat", "in", "the", "Hat"])

//=====================================
//MARK: Math Exercises
//=====================================

func maxValue(numbers: [Int]) -> Int {
    
    guard !numbers.isEmpty else { return 0 }
    guard numbers.count > 1 else { return numbers[0] }
    
    var max = numbers[0]
    
    for value in numbers {
        
        if value > max {
            max = value
        }
    }
    
    return max
}
maxValue(numbers: integers)

func minValue(numbers: [Int]) -> Int {
    
    guard !numbers.isEmpty else { return 0 }
    guard numbers.count > 1 else { return numbers[0] }
    
    var min = numbers[0]
    
    for value in numbers {
        
        if value < min {
            min = value
        }
    }
    
    return min
}
minValue(numbers: integers)

func countEvens(numbers: [Int]) -> Int {
    
    return numbers
        .filter() { number in number.isEven() }
        .count
}

countEvens(numbers: integers)

func sum(numbers: [Int]) -> Int {
    
    var sum = 0
    
    for value in numbers {
        sum += value
    }
    
    return sum
}
sum(numbers: integers)

func average(numbers: [Int]) -> Double {
    
    let sumOfNumbers = sum(numbers: numbers)
    let count = Double(numbers.count)
    
    return Double(sumOfNumbers) / count
}
average(numbers: integers)

func squares(numbers: [Int]) -> [Int] {
    
    return numbers
        .map() { number in return number * number }
}

squares(numbers: integers)


func toFahrenheit(temperatures: [Double]) -> [Double] {
    
    func toFahrenheit(celsius: Double) -> Double {
        return (celsius * 9/5) + 32
    }
    
    return temperatures.map(toFahrenheit)
}

let temperatures = integers.map() { Double($0) }
toFahrenheit(temperatures: temperatures)


func combine(first: [Int], _ second: [Int]) -> [Int] {
    
    return first + second
    
}

func merge(first: [Int], second: [Int]) -> [Int] {
    
    var result: [Int] = []
    
    if first.isEmpty {
        return second
    }
    
    if second.isEmpty {
        return first
    }
    
    var firstIndex = 0
    var secondIndex = 0
    
    while firstIndex < first.count && secondIndex < second.count {
        
        result.append(first[firstIndex])
        result.append(second[secondIndex])
        
        firstIndex += 1
        secondIndex += 1
    }
    
    //Check for lefovers
    
    if firstIndex < first.count {
        
        for index in firstIndex..<first.count {
            result.append(first[index])
        }
    }
    
    if secondIndex < second.count {
        
        for index in secondIndex..<second.count {
            result.append(second[index])
        }
    }
    
    return result
}

//=====================================
//MARK: Bonus Exercises
//=====================================

let firstArray = randomArrayOfInts(ofSize: 10)
let secondArray = randomArrayOfInts(ofSize: 20)

let result = merge(first: firstArray, second: secondArray)

print(result)
