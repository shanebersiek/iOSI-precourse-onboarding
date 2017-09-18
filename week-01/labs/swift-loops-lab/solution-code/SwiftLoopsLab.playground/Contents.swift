//: Playground - noun: a place where people can play

import UIKit

//MARK: Basic

for i in 1...100 {
    print("\(i)")
}

func isEven(_ number: Int) -> Bool {
    return number % 2 == 0
}

for i in 1..<100 {
    
    if isEven(i) {
        print("Even")
    }
    else {
        print("Odd")
    }
}

//MARK: Logic
//Fizzbuzz

for i in 1...100 {
    
    if (i % 3 == 0 && i % 5 == 0) {
        print("FizzBuzz")
    }
    else if i % 3 == 0 {
        print("Fizz")
    }
    else if i % 5 == 0 {
        print("Buzz")
    }
    else {
        print("\(i)")
    }
    
}

//MARK: Math
//Harmonic

var harmonic: Double = 1.0

for i in 2...5000 {
    harmonic += 1 / Double(i)
}

print("Hamonic for 5,000 is \(harmonic)")


//Prime
extension Int {
    
    public func isEven() -> Bool {
        return self % 2 == 0
    }
    
    public func isOdd() -> Bool {
        return !self.isEven()
    }
    
    public func isPrime() -> Bool {
        
        if self == 1 || self == 2 || self == 3 {
            return true
        }
        
        for i in 2...(self / 2) {
            
            if self % i == 0 {
                return false
            }
        }
        
        return true
    }
}

for i in 1...2_000 {
    
    if i.isPrime() {
        print("\(i)")
    }
}

//Multiplication

var multiplicationResult = 0
var firstMultiplier = 234

for i in 1...3643 {
    multiplicationResult += firstMultiplier
}
print("Multiplication of (234 x 3643) = \(multiplicationResult)")
print("Expected result is \(234 * 3643)")


//Factorial

var factorial = 15
for i in (1...14).reversed() {
    factorial *= i
}
print("15! is \(factorial)")


//MARK: Checker Board

let blackSquare = "◻︎"
let whiteSquare = "◼︎"

print("\n")
for row in 1...10 {
    
    for column in 1...10 {
        
        if row.isOdd() {
            
            if column.isOdd() {
                print(blackSquare, terminator:"")
            }
            else {
                print(whiteSquare, terminator:"")
            }
        }
        else {
            
            if column.isOdd() {
                print(whiteSquare, terminator:"")
            }
            else {
                print(blackSquare, terminator:"")
            }
            
        }
    }
    
    print("\n")
}

//MARK: Airplanes

for row in 1...26 {
    print("\(row)a \(row)b \(row)c  \(row)d \(row)e  \(row)f \(row)g \(row)h")
}
