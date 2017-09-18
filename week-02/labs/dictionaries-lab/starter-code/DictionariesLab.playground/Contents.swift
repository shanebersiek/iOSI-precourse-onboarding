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

func randomArrayOfInts() -> [Int] {
    
    let count = randomInt(from: 10, to: 1000)
    
    var array: [Int] = []
    
    for _ in 1...count {
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

func randomDictionaryOfStrings() -> [String : String] {
    
    let count = randomInt(from: 10, to: 100)
    
    var result: [String : String] = [ : ]
    
    for _ in 1...count {
        result[randomString()] = randomString()
    }
    
    return result
}


//=====================================
//MARK: Exercises
//=====================================

let map = randomDictionaryOfStrings()
