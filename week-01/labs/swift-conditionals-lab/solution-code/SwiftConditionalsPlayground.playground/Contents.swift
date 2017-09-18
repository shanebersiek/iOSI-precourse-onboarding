//: Playground - noun: a place where people can play

import UIKit

//MARK: Random Function
//Use this to create your integers
func randomInteger(from: Int, to: Int) -> Int {
    let difference = to - from
    
    let random = Int(arc4random_uniform(UInt32(difference)))
    let result = from + random
    
    if result < from {
        return from
    }
    else if result > to {
        return to
    }
    else {
        return result
    }
}

func randomBoolean() -> Bool {
    return randomInteger(from: 0, to: 10) % 2 == 0
}

//MARK: Sides

let sides = randomInteger(from: 3, to: 6)

switch sides {
    case 3 : print("Triangle")
    case 4 : print("Rectangle")
    case 5 : print("Pentagon")
    case 6 : print("Hexagon")
    default : break
}

//MARK: Temperature
let temperature: Int = randomInteger(from: 0, to: 100)

if temperature < 20 {
    print("It's super cold. Rock the North Face today")
}
else if temperature < 40 {
    print("It's frigid out there. Put on the leather jacket and a scarf.")
}
else if temperature < 60 {
    print("It's a brisk day")
}
else if temperature < 80 {
    print("It's wonderful outside. Wear a Polo with a Tie.")
}
else if temperature < 100 {
    print("It's blazin'. Show off the summer figure.")
}
else {
    print("I hope your AC works.")
}

//MARK: Time of day

let hour = randomInteger(from: 1, to: 24)

switch hour {
case 21, 22, 23, 24, 1, 2, 3, 4 :
    print("Night")
case 5, 6 :
    print("Dawn")
case 7, 8, 9 :
    print("Early Morning")
case 10, 11:
    print("Morning")
case 12 :
    print("Noon")
case 13, 14, 15, 16 :
    print("Afternoon")
case 17, 18:
    print("Dusk")
case 19, 20:
    print("Evening")
default :
    print("What planet are you on?")
}

//MARK: Age
let age = randomInteger(from: 1, to: 100)

let decade = age / 10

switch decade {
    case 0 :
        print("Newborn")
    case 1:
        print("10s")
    case 2:
        print("20s")
    case 3:
        print("30s")
    case 4 :
        print("40s")
    case 5:
        print("50s")
    case 6:
        print("60s")
    case 7:
        print("70s")
    case 8:
        print("80s")
    case 9:
        print("90s")
    case 10:
        print("100s")
    default:
        print("Zombie Status")
}


//MARK: Biggest number

let a = randomInteger(from: 1, to: 10)
let b = randomInteger(from: 1, to: 10)
let c = randomInteger(from: 1, to: 10)

if a > b && a > c {
    print("\(a)")
} else if b > a && b > c {
    print("\(b)")
} else {
    print("\(c)")
}

//MARK: Number 6
let numberOne = randomInteger(from: 1, to: 100)
let numberTwo = randomInteger(from: 1, to: 100)

if numberOne == 6 || numberTwo == 6 {
    print ("Awesome")
} else {
    let difference = abs(numberTwo - numberOne)
    
    if difference == 6 {
        print("Awesome")
    } else {
        print("Not Awesome")
    }
}

//MARK: Monkey Business
let freddyIsSmiling = randomBoolean()
let jasonIsSmiling = randomBoolean()

if freddyIsSmiling == jasonIsSmiling {
    print("We're in Trouble!")
} else {
    print("We are not in trouble")
}
