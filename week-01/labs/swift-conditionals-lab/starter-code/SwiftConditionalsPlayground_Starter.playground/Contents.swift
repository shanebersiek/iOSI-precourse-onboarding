//: Conditionals Lab - Practice using if, else, and switch in Swift.

import UIKit

//MARK: - Random Function
//Use this to create your integers
func randomInteger(from: Int, to: Int) -> Int {
  let difference = to - from
  
  let random = Int(arc4random_uniform(UInt32(difference)))
  let result = from + random
  
  if result < from {
    return from
  } else if result > to {
    return to
  } else {
    return result
  }
}

// Random Boolean Function
func randomBoolean() -> Bool {
  return randomInteger(from: 0, to: 10) % 2 == 0
}

// MARK: - Requirements

// Given an integer, sides, print the name of the polygon with that number of sides
let sides = randomInteger(from: 2, to: 10)

switch sides {
    
case 3:
    print("triangle")
case 4:
    print("Square")
case 5:
    print("Pentagon")
default:
    print("shape not recognized")
    
}

// Given a temperature (in Fahrenheit), print a suggestion of what to wear
let temperature = randomInteger(from: -459, to: 459)

if temperature >= 0 {

    switch temperature {
        
    case 0...50:
        print("its freezing stay inside")
    case 51...70:
        print("its chilly bring a sweater")
    case 71...80:
        print("its nice day to go out")
    case 81...90:
        print(" tank top weather")
    default:
        print("hot as hell baby")
        }
    
} else {
        
        print("its cold AF!!")
    }



// Given an hour (from 1 to 24), print the time of day.
let timeOfDay = randomInteger(from: 1, to: 24)



// Given a person's age, print a String saying what era of their life they are in. For example, someone who is 27 is in their "20s".
let age = randomInteger(from: 1, to: 100)

switch age {
    
case 1...12:
    print("you are a baby")
case 13...19:
    print("you are a teenager")
case 20...29:
    print("your are in your 20s")
case 30...39:
    print("your in your 30s")
case 40...49:
    print("its all down hill from here")
default:
    print(" i haven no idea")
    }

// Given a student's grade for an example, print their Letter grade
let grade = randomInteger(from: 0, to: 100)

//i didnt follow the grading scale but i get the concept


if (grade <= 50 ) && (grade >= 0) {
    print("you have a F my fine sir")
}
else if (grade <= 70) && (grade >= 51) {
    print("you have a D my fine sir")
}
else if grade <= 80 && grade >= 71 {
    print("you have a C my fine sir")
}
else if grade <= 100 && grade >= 90 {
    print("you have a B my fine sir")
} else {
    print("NA")
    
}


// The number 6 is a truly great number. Create two Integers num1, num2, from 1 to 100, and print "Awesome" if either one is 6, or if sum or difference of those two numbers is 6.
let num1 = randomInteger(from: 0, to: 100)
let num2 = randomInteger(from: 0, to: 100)

if num1 + num2 == 6 || num1 - num2 == 6 {
    print("Great!")
}
else if num1 == 6 || num2 == 6 {
    print("great")
    }
else {
    print("Not 6")
}



// We have two monkeys, Freddy and Jason, and the variables freddyIsSmiling and jasonIsSmiling indicate if each is smiling. We are in trouble if they are both smiling or if neither of them is smiling. Print "Trouble" if we are in trouble. Otherwise, print "Not in trouble".
let freddyIsSmiling = randomBoolean()
let jasonIsSmiling = randomBoolean()


// MARK: - Bonus

// Given 3 integers, a, b, c, print the largest one.
let a = randomInteger(from: 1, to: 100)
let b = randomInteger(from: 1, to: 100)
let c = randomInteger(from: 1, to: 100)


// Now print the smallest


// Given an Integer from 1 - 7, print out the name of the day.
let day = randomInteger(from: 1, to: 7)


// The squirrels in Palo Alto spend most of the day playing. In particular, they play if the temperature is between 60 and 90 (inclusive). Unless it is summer, then the upper limit is 100 instead of 90. Given an Integer temperature and a Bool isSummer, print "Playing" if the squirrels play and "Not Playing" otherwise.
let isSummer = randomBoolean()
let paloAltoTemperature = randomInteger(from: 38, to: 100)


// There are 88 keys in a piano. Given a number from 1 - 88, print out the name of the key, (C, D, E, F, G, H, etc)
let pianoKey = randomInteger(from: 1, to: 88)

