//: Playground - noun: a place where people can play

import UIKit


//=================================================================
// Library
//=================================================================

var randomInt: Int {

    let randomValue = arc4random_uniform(10_000)
    return Int(randomValue)
}

extension Int {

    func isDivisible(by other: Int) -> Bool {
        return self % other == 0
    }

    func isPrime() -> Bool {

        switch self {
            case 1, 2, 3 :
                return true
            default :
                break
        }

        for i in (3...self/2) {

            if self.isDivisible(by: i) {
                return false
            }
        }
        return true
    }
}

enum BadNumberError : Error {
    case weird
    case prime
}

//=================================================================
// Exercise 1
//=================================================================

var counter = 0


//Given this function
func getNextValue() throws -> Int {

    counter += 1

    if counter.isDivisible(by: 16) {
        throw BadNumberError.weird
    }

    if counter.isPrime() {
        throw BadNumberError.prime
    }

    return counter
}

//Fix this one.
//If the exception is Weird, print "Number is weird"
//If the exception is Prime, print "Number if prime"

func testGetNextValue() {
  
  do {
    let result = try getNextValue()
    print(result)
  } catch BadNumberError.weird {
    print("Number is weird")
  } catch BadNumberError.prime {
    print("Number is prime")
  } catch {
    print()
  }
  
  let result = (try? getNextValue())
  if let result = result {
    print(result)
  }
  
  let forcedResult = try! getNextValue()
  print(forcedResult)
}


//=================================================================
// Exercise 2
//=================================================================

//Shorten this code block using try?
do {
  let value = try getNextValue()
  print(value)
} catch {
  print("Failed to get next value: \(error)")
}

let value = try? getNextValue()
if let value = value {
  print(value)
} else {
  print("Failed to get next value.")
}


//=================================================================
// Exercise 3
//=================================================================


//Given the following
enum PersonError : Error {
    case outOfCoffee
    case tooTired
}

class Person {

    let name: String

    init(name: String) {
        self.name = name
    }

    func doWork() throws {

        switch randomInt {

            case let x where x.isDivisible(by: 5) :
                throw PersonError.outOfCoffee

            case let x where x.isDivisible(by: 10) :
                throw PersonError.tooTired

            default :
                print("I am working")
        }
    }
}

//Fix this code section to prevent exceptions
let julie = Person(name: "Julie")
//try! julie.doWork()
try? julie.doWork()

do {
  try julie.doWork()
} catch PersonError.tooTired {
  print("Julie is too tired to work")
} catch PersonError.outOfCoffee {
  print("Julie needs more coffee")
} catch {
  print("Julie is already busy")
}

//If Julie is too tired, print "Julie is too tired to work"
//If Julie is out of cofee, print "Julie needs more coffee"
//Otherwise, print "Julie is already busy"


//=================================================================
// Exercise 4
//=================================================================

enum MathError: Error {
  case divideByZero
  case isNegative
}

struct MathErrorTwo: Error {
  let value: String
}

extension String: Error {}

//Rewrite this function so that it throws an exception if the second argument is 0
func divide(first: Int, second: Int) throws -> Int {
  guard second != 0 else {
    throw "divide by zero"
  }

  return first / second
}

do {
  try divide(first: 5, second: 0)
} catch let error as String {
  print("error is string: \(error)")
} catch is MathErrorTwo {
  print("error is struct")
} catch is MathError {
  print("error is enum")
} catch let error {
  print("unknown error: \(error)")
}

//=================================================================
// Exercise 5
//=================================================================

//Rewrite this function so that it throws an exception if the argument is negative

func kiss(number: Int) throws {
  guard number >= 0 else {
    throw MathError.isNegative
  }
  
  if number < 0 {
    throw MathError.isNegative
  }
  
  print("😘\(number)")
}

do {
  try kiss(number: 9)
  try kiss(number: -4)
} catch MathError.isNegative {
  print("Bad number")
} catch {
  print(error)
}



//=================================================================
// Exercise 6
//=================================================================

//Design a Car class with a function `go() throws`.
//This function throws when it runs out of gas.
//Be sure to also add a `refill()` method that fills the car's tank, allowing it to go further


//=================================================================
// Bonus:
//=================================================================


//Design an ATM that allows a person to withdraw and deposit money.
//If a person tries to withdraw money without enough funds, throw an appropriate exception
//If a person tries to withdraw a negative amount, throw an appropriate exception
//If a person tries to deposit a negative amount, throw an appropriate exception
