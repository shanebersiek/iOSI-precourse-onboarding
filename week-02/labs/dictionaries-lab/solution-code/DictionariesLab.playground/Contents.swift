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

let meals = [
    "Monday" : ["Oatmeal", "Cheez-its", "Banana"],
    "Tuesday" : ["Oatmeal", "Vegetables", "Chicken", "Beans"],
    "Wednesday" : ["Oatmeal", "Salad", "Salmon", "Peanuts"],
    "Thursday" : ["Peanut Butter", "Cereal"],
    "Friday" : []
]


func unionOf(mapOne: [String: String], mapTwo: [String : String]) -> [String : String] {
    
    var result = mapOne
    
    for (key, value) in mapTwo {
        
        //Keeping the value in the first map if it already exists
        if result[key] == nil {
            result[key] = value
        }
        
    }
    
    return result
}

let secondMap = randomDictionaryOfStrings()
unionOf(mapOne: map, mapTwo: secondMap)


func areTheSame(mapOne: [String: String], mapTwo: [String: String]) -> Bool {
    
    guard mapOne.count == mapTwo.count
    else { return false }
    
    for (key, value) in mapOne {
        
        guard let otherValue = mapTwo[key],
              otherValue == value
        else {
            return false
        }
    }
    
    return true
}

areTheSame(mapOne: map, mapTwo: secondMap)
areTheSame(mapOne: map, mapTwo: map)

var mapCopy = map
areTheSame(mapOne: map, mapTwo: mapCopy)


func keysInCommon(map1: [String : String], map2: [String : String]) -> [String] {
    
    var commonKeys: [String] = []
    
    for (key, _) in map1 {
        
        if map2[key] != nil {
            commonKeys.append(key)
        }
    }
    
    return commonKeys
}

keysInCommon(map1: map, map2: secondMap)
keysInCommon(map1: map, map2: mapCopy)

func numberCount(array: [Int]) -> [Int : Int] {
    
    var counts: [Int : Int] = [ : ]
    
    for number in array {
        
        let currentCount = counts[number] ?? 0
        counts[number] = currentCount + 1
    }
    
    return counts
}

let numbers = randomArrayOfInts()
numberCount(array: numbers)

func mostPopularWord(from words: [String]) -> String {
    
    var wordCounts: [String : Int] = [ : ]
    
    for word in words {
        
        let currentCount = wordCounts[word] ?? 0
        wordCounts[word] = currentCount + 1
    }
    
    let result = wordCounts.max() { first, second in
        return first.1 < second.1
    }
    
    return result?.0 ?? ""
}

let randomWords = randomArrayOfStrings()
mostPopularWord(from: randomWords)

let words = ["The", "Team", "Think", "Beyond",  "Crime", "Time", "Clarity", "Time", "Sun", "Time", "Sun"]
mostPopularWord(from: words)


let matches = [
    "Match 1" : "Win",
    "Match 2" : "Win",
    "Match 3" : "Win",
    "Match 4" : "Loss",
    "Match 5" : "Loss",
    "Match 6" : "Win"
]

func hackTeam(matches: [String : String]) -> [String : String] {
    
    var hackedResult = matches
    
    for (match, result) in matches {
        if result == "Win" {
            hackedResult[match] = "Loss"
        }
    }
    
    return hackedResult
    
}

hackTeam(matches: matches)

func reverseMatches(matches: [String : String]) -> [String : String] {
    
    var reversed = matches
    
    for (match, result) in matches {
        
        if result == "Win" {
            reversed[match] = "Loss"
        }
        else if result == "Loss" {
            reversed[match] = "Win"
        }
        else {
            reversed[match] = "Win"
        }
    }
    
    return reversed
}

reverseMatches(matches: matches)



//=====================================
//MARK: Bonuses
//=====================================

let businesses = [
    "Microsoft" : [
        "CEO" : "Satya Nadella",
        "Website" : "microsoft.com"
    ],
    "Amazon" :[
        "CEO" : "Jeff Bezos",
        "Website" : "amazon.com"
    ],
    "Apple" : [
        "CEO" : "Tim Cook",
        "Website" : "apple.com"
    ]
]

func mostPopularWordIgnoringCase(words: [String]) -> String {
    
    let lowerCasedWords = words.map() { $0.lowercased() }
    
    var wordCount: [String : Int] = [ : ]
    
    for word in lowerCasedWords {
        
        let currentCount = wordCount[word] ?? 0
        wordCount[word] = currentCount + 1
    }
    
    let result = wordCount.max() { first, second in
        return first.1 < second.1
    }
    
    return result?.0 ?? ""
}

mostPopularWord(from: words)
mostPopularWord(from: randomWords)

func intersection(first: [String : String], second: [String: String]) -> [String : String] {
    
    var intersection: [String : String] = [ : ]
    
    guard !first.isEmpty && !second.isEmpty
    else {
        return intersection
    }
    
    for (key, value) in first {
        
        guard let otherValue = second[key],
              otherValue == value
        else {
            continue
        }
        
        intersection[key] = value
    }
    
    return intersection
}

intersection(first: map, second: secondMap)
intersection(first: map, second: mapCopy)
