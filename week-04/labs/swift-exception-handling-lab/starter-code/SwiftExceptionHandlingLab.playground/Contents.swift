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

    func isDivisibleBy(other: Int) -> Bool {
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

            if self.isDivisibleBy(other: i) {
                return false
            }
        }
        return true
    }
}

enum BadNumberError : ErrorProtocol {
    case Weird
    case Prime
}

//=================================================================
// Exercise 1
//=================================================================

var counter = 0


//Given this function
func getNextValue() throws -> Int {

    counter += 1

    if counter.isDivisibleBy(other: 16) {
        throw BadNumberError.Weird
    }

    if counter.isPrime() {
        throw BadNumberError.Prime
    }

    return counter
}

//Fix this one.
//If the exception is Weird, print "Number is weird"
//If the exception is Prime, print "Number if prime"

func testGetNextValue() {

    let result = getNextValue()
    print(result)
}


//=================================================================
// Exercise 2
//=================================================================

//Shorten this code block using try?
do {
    let value = try getNextValue()
    print(value)
}
catch let ex {
    print("Failed to get next value: \(ex)")
}


//=================================================================
// Exercise 3
//=================================================================


//Given the following
enum PersonError : ErrorProtocol {
    case OutOfCoffee
    case TooTired
}

class Person {

    let name: String

    init(name: String) {
        self.name = name
    }

    func doWork() throws {

        switch randomInt {

            case let x where x.isDivisibleBy(other: 5) :
                throw PersonError.OutOfCoffee

            case let x where x.isDivisibleBy(other: 10) :
                throw PersonError.TooTired

            default :
                print("I am working")
        }
    }
}

//Fix this code section to prevent exceptions
let julie = Person(name: "Julie")
try! julie.doWork()

//If Julie is too tired, print "Julie is too tired to work"
//If Julie is out of cofee, print "Julie needs more coffee"
//Otherwise, print "Julie is already busy"


//=================================================================
// Exercise 4
//=================================================================


//Rewrite this function so that it throws an exception if the second argument is 0
func divide(first: Int, second: Int) -> Int {

    guard second != 0 else { return 1 }

    return first / second
}

divide(first: 5, second: 0)

//=================================================================
// Exercise 5
//=================================================================

//Rewrite this function so that it throws an exception if the argument is negative

func kiss(number: Int) {
    print("😘\(number)")
}

kiss(number: 9)
kiss(number: -4)


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
