//: Playground - noun: a place where people can play

import UIKit


//MARK: Basic

//Say Hello

func sayHello(to name: String) {
    print("Hello, \(name)")
}

sayHello(to: "Kat")

//Is Even

func isEven(_ number: Int) -> Bool {
    return number % 2 == 0
}

isEven(20)
isEven(21)


//Print Even Odd

func printEvenOdd() {
    
    for i in 1..<100 {
        if isEven(i) {
            print("\(i) is Even")
        }
        else {
            print("\(i) is Odd")
        }
    }
}
printEvenOdd()

//While loop version

func printEvenOddWhileLoop() {

    var number = 1

    while number < 100 {
        
        if isEven(number) {
            print("\(number) is Even")
        }
        else {
            print("\(number) is Odd")
        }
        
        number += 1
    }
}

printEvenOddWhileLoop()

//MARK: Strings

//Reverse a String

func reverseString(_ string: String) -> String {
    
    var result = ""
    
    for i in string.characters.indices.reversed() {
        result += "\(string.characters[i])"
    }
    
    return result
    
}

reverseString("Dido")


//Repeat Strings

func repeatString(string: String, by times: Int) -> String {
    var result = ""
    
    for _ in 1...times {
        result += string
    }
    
    return result
}

repeatString(string: "Hubba! ", by: 3)


// Check if Strings equal

func areEqual(first: String, second: String) -> Bool {
    
    if first == second {
        return true
    }
    
    if first.characters.count != second.characters.count {
        return false
    }
    
    let firstLowerCased = first.lowercased()
    let secondLowerCased = second.lowercased()
    
    return firstLowerCased == secondLowerCased
}

areEqual(first: "Quality", second: "Quality")
areEqual(first: "Quality", second: "Quantity")
areEqual(first: "Quality", second: "quality")

//MARK: Conversions


func fahrenheitToCelsius(degree fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * (5/9)
}
fahrenheitToCelsius(degree: 100)

func celsiusToFahrenheit(degrees celcius: Double) -> Double {
    return (celcius * 9/5) + 32
}

celsiusToFahrenheit(degrees: 30)

func gigaBytesToBits(gigabytes: Int) ->  Int {
    let bytes = gigabytes * 1073741824
    return bytes * 8
}

gigaBytesToBits(gigabytes: 10)

//Decimal Character to Hex
func decimalToHexCharacter(decimal: Int) -> String {
    
    switch decimal {
        case 0, 1, 2, 3, 4, 5, 6, 7, 8, 9:
            return "\(decimal)"
        
        case 10:
            return "A"
        case 11:
            return "B"
        case 12:
            return "C"
        case 13:
            return "D"
        case 14:
            return "E"
        case 15:
            return "F"
        case 16:
            return "10"
        default:
            return ""
        
    }
}

decimalToHexCharacter(decimal: 3)
decimalToHexCharacter(decimal: 10)
decimalToHexCharacter(decimal: 11)
decimalToHexCharacter(decimal: 16)

//MARK: Math
func max(first: Int, second: Int) -> Int {
    
    if first > second {
        return first
    }
    else {
        return second
    }
}

max(5, 10)
max(100, 34)

func ternaryMax(first: Int, second: Int) -> Int {
    return first > second ? first : second
}

ternaryMax(first: 5, second: 10)
ternaryMax(first: 100, second: 34)

func min(first: Int, second: Int) -> Int {
    
    if first < second {
        return first
    }
    else {
        return second
    }
}

min(30, 140)
min(30103, 20)

func ternaryMin(first: Int, second: Int) -> Int {
    return first < second ? first : second
}

ternaryMin(first: 104, second: 204)
ternaryMin(first: 30, second: 109843)

//Power of two

func isPowerOfTwo(_ number: Int) -> Bool {
    
    if !isEven(number) {
        return false
    }
    
    if number == 2 {
        return true
    }
    
    var dividend = number / 2
    
    while dividend > 2 {
        dividend /= 2
    }
    
    return dividend == 2
}

isPowerOfTwo(2)
isPowerOfTwo(4)
isPowerOfTwo(16)
isPowerOfTwo(24)
isPowerOfTwo(36)
isPowerOfTwo(48)
isPowerOfTwo(256)
isPowerOfTwo(1026)
isPowerOfTwo(1024)
isPowerOfTwo(1000)


// Is Prime

func isPrime(_ number: Int) -> Bool {
    
    switch number {
        case 0, 1, 2, 3:
            return true
        
        default :
            break
    }
    
    for potentialFactor in (2...(number / 2)) {
        
        if number % potentialFactor == 0 {
            return false
        }
    }
    
    return true
}

isPrime(1)
isPrime(2)
isPrime(3)
isPrime(5)
isPrime(6)
isPrime(11)
isPrime(13)
isPrime(1423)




//MARK: Bonuses

//Color conversion
func rgbToHex(red
    : Int, green: Int, blue: Int) -> String {
    
    
    func colorComponent(for color: Int) -> String {
      
        var result = ""
    
        var remainder = 0
        remainder = color % 16
        result += decimalToHexCharacter(decimal: remainder)
        remainder = remainder % 16
        result += decimalToHexCharacter(decimal: remainder)
        
        return result
    }
    
    let result = colorComponent(for: red) + colorComponent(for: blue) + colorComponent(for: green)
    return "#\(result)"
    
}

rgbToHex(red: 255, green: 255, blue: 255)
rgbToHex(red: 0, green: 0, blue: 0)
rgbToHex(red: 24, green: 135, blue: 223)
