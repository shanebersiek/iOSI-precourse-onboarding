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
    
    do {
        let result = try getNextValue()
        
        print(result)
    }
    catch BadNumberError.Weird {
        print("Number if weird")
    }
    catch BadNumberError.Prime {
        print("Number if prime")
    }
    catch let ex {
        print("Unknown Error: \(ex)")
    }
    
}


//=================================================================
// Exercise 2
//=================================================================

//Shorten this code block using try?

if let value = try? getNextValue() {
    print(value)
}


//=================================================================
// Exercise 3
//=================================================================


//Given the following
enum PersonError : ErrorProtocol {
    case OutOfCoffee
    case TooTired
}

class Person : Hashable {
    
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
    
    var hashValue: Int {
        return name.hashValue
    }
    

}

func ==(lhs: Person, rhs: Person) -> Bool {
    return lhs.name == rhs.name
}

//Fix this code section to prevent exceptions
let julie = Person(name: "Julie")

//If Julie is too tired, print "Julie is too tired to work"
//If Julie is out of cofee, print "Julie needs more coffee"
//Otherwise, print "Julie is already busy"

do {
    try julie.doWork()
    print("Julie is already working!")
}
catch PersonError.OutOfCoffee {
    print("Julie needs more coffee to work")
}
catch PersonError.TooTired {
    print("Julie is too tired to work today!")
}
catch let ex {
    print("Might want to check on Julie: \(ex)")
}



//=================================================================
// Exercise 4
//=================================================================

enum InvalidArgument : ErrorProtocol {
    case DivisionByZero
    case BadArgument
    case NegativeNumber
}

//Rewrite this function so that it throws an exception if the second argument is 0
func divide(first: Int, second: Int) throws -> Int {
    
    if second == 0 {
        print("Cannot divide by 0")
        throw InvalidArgument.DivisionByZero
    }
    
    return first / second
}

try? divide(first: 5, second: randomInt)

//=================================================================
// Exercise 5
//=================================================================

//Rewrite this function so that it throws an exception if the argument is negative

func kiss(number: Int) throws {
    
    if number < 0 {
        throw InvalidArgument.NegativeNumber
    }
    
    print("😘\(number)")
}

do {
    try kiss(number: 9)
    try kiss(number: -4)
}
catch let ex {
    print("Could not kiss a number: \(ex)")
}


//=================================================================
// Exercise 6
//=================================================================

//Design a Car class with a function `go() throws`.
//This function throws when it runs out of gas.
//Be sure to also add a `refill()` method that fills the car's tank, allowing it to go further

enum CarException : ErrorProtocol {
    case OutOfGas
    case BatteryIsDead
}

class Car {
    
    var gasAmount = 10
    
    func go() throws {
        
        if gasAmount <= 0 {
            throw CarException.OutOfGas
        }
        
        print("I'm going!")
        gasAmount -= 1
    }
    
    func refill() {
        self.gasAmount = 10
    }
}

let car = Car()

for _ in (1...100) {
    
    do {
        try car.go()
    }
    catch CarException.OutOfGas {
        car.refill()
    }
}


//=================================================================
// Bonus:
//=================================================================

//Design an ATM that allows a person to withdraw and deposit money.
//If a person tries to withdraw money without enough funds, throw an appropriate exception
//If a person tries to withdraw a negative amount, throw an appropriate exception
//If a person tries to deposit a negative amount, throw an approriate exception

enum ATMException : ErrorProtocol {
    case InsufficientFundsException
    case InvalidDepositAmountException
    case InvalidWithdrawalAmount
}

class ATM {
    
    private var accounts: [Person: Int] = [ : ]
    
    
    func deposit(amount: Int, toAccount person: Person) throws {
        
        guard amount > 0 else {
            throw ATMException.InvalidDepositAmountException
        }
        
        let exitingBalance = accounts[person] ?? 0
        accounts[person] = exitingBalance + amount
    }
    
    func withdraw(amount: Int, fromAccount person: Person) throws -> Int {
        
        guard amount > 0 else {
            throw ATMException.InvalidWithdrawalAmount
        }
        
        let existingBalance = accounts[person] ?? 0
        
        if existingBalance < amount {
            throw ATMException.InsufficientFundsException
        }
        
        accounts[person] = existingBalance - amount
        return amount
    }
}
