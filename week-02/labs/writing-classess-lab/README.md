---
title: "Writing Classes Lab"
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Writing Classes Lab

## Introduction

#### What we are doing

In this lab, we will practice designing and creating Classes and Objects.

> ***Note:*** _This lab should be done independently._


#### Why we are doing it

Swift is an Object-Oriented Language. Everything in Swift is an Object, even basic number literals like `1`, `2`, etc.
Classes and Objects allow us to reason and think about code in a similar way to the real world. This makes it easier for humans to design better and more complex systems.

You will need to create classes in order to create custom UI elements. Classes also make it easier to collect and use data.

## Exercise

### Requirements

**Classes**

For the following exercises, be sure to use `let` and `var` to determine the properties that change (name) and those that do not (age).
Also, use Optionals for properties that are optional - for example, not everyone has a Computer, or not every Apartment has a person.

+ Design a Person Class.
    + Include the following *stored* properties:
        + First Name
        + Last Name
        + Birth Year
        + Height
        + Hair Color
        + Birth Place
        + Personal Website
    + Include the following *computed* properties:
        + Full Name (combines First and Last names)
        + Age (using the Birth Year)
        + Description (says something like, "Jeff Bezos is 52 and was born in Albuquerque")
    + Write an initializer
    + Include a function called `sayHello()` that uses `print()` to introduce the person.


+ Design a User Class.
    + Include a Username property
    + Include a special Password property that adds "1234" to the original when set, but returns the original when it is retrieved.
    > Hint: Use the `get set` features.


+ Create a new Person Object.
    + Check if the object is a User, by using the `is` keyword.
    + Check if the object is a Person, by using the `is` keyword.

+ Create a new User Object.
    + Check if the object is a Person, but using the `is` keyword.
    + Check if the object is a User, by using the `is` keyword.

**Functions**

+ Write a function that takes two Users and checks if they have the same password.

+ Write a function that takes two Persons and checks if they have the same birth year. If they do, print "Person 1 and Person 2 were both born on 1973"


### Starter code
There is no starter code.


### Solution Code
Solution code can be found in [solution-code](solution-code).

## Deliverables

Turn in your code in a single Playgrounds Project.


**Verify that**
+ Your code compiles
+ You created instances of each of your Classes
+ You tested your functions by calling them with real arguments
+ You tested the Objects by calling their functions and accessing their data


---

### Bonus Activities

**Classes**

+ Design a Computer class. Write all the properties you think it should have *(cost, model, processor, etc)*.

+ Redesign the Person class to contain an array of Computers, and create an instance of a Person with several computers.

+ Write a function that takes a Person and returns the total cost of all of his/her computers.

+ Design a Car class to include all the major components:
    + Wheels
    + Engine
    + Color
    + Make
    + Range
    + Top Speed
    + Spoiler?
    + etc

**Functions**

+ Write a function `race(distanceInMiles: Int, carOne: Car, carTwo: Car) -> Car` that returns the car that finishes first. Keep in mind that if the distance of the race exceeds a Car's range, the other one wins.

---

# Additional Resources

+ [Swift Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1)
+ [Object-Oriented Programming in Swift](https://www.weheartswift.com/object-oriented-programming-swift/)
+ [Swift Classes](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html)
