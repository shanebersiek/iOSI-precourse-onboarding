---
title: "Unit Testing Lab"
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Unit Testing Lab

## Introduction

#### What we are doing

In this lab, we will practice writing Unit Tests.

> ***Note:*** _This lab can be done collaboratively or independently._


#### Why we are doing it

Before cars are assembled, their parts are tested over and over at the manufacturing plant to make sure they work.
Unit tests allow you to write small individual tests to make sure that your code is working as you expect.
This has the tremendous benefits of catching bugs and issues much earlier than would be the case otherwise.

## Exercise

Create a Single-View App project.
> NOTE: There is no UI used in this lab.

### Requirements

**Exercise 1**

+ Design a `Food` class that has the following properties:
    + `name: String`
    + `weight: Int`.
    + `temperature: Int`

+ Design a Microwave class that has a `maxWeight: Int` property. It should also have the following methods:
    + `put(food: Food) throws` : This method accepts a `Food` object to be heated. It throws an exception if:
        + There is already something in the Microwave
        + The food being put in exceeds the capacity of the microwave

    + `open() -> Food?` : This method opens the Microwave and takes that food out. If there is nothing in the Microwave, `nil` is returned.
        + Also make sure that if there is a food item, that the temperature of the Food object is higher than it was when it was `put()` in.

Write Unit tests for the Microwave class to make sure that it works as expected. Test the following cases:
+ Put a normal Food item.
+ Put a food item that is overweight.
+ Put a food item when the Microwave already has something.
+ Open the Microwave to take something out. Check that the temperature is higher.
+ Open the Microwave when there is nothing inside. Check that the value is `nil`.

**Exercise 2**

Download the [Ubuntu Font](http://font.ubuntu.com/) and import it into the Project.
+ Write a class `Fonts` with a `static var ubuntu: UIFont?` that loads the Font.
+ Write a Unit Test to ensure this value is never `nil`.
+ Write a `static func ubuntu(withSize size: Int) -> UIFont?` that returns the Ubuntu font with a specified font size.
+ Write a Unit Test to ensure this works with a variety of values from (8...70) and is never `nil`.

>**Tip** : You might have to add a label to the View in Storyboard that uses the Ubuntu Font for XCode to include the
font during Runtime.

### Starter code

There is no starter-code for this project.


### Solution Code
Solution code can be found in [solution-code](solution-code).

## Deliverables

Even though this App is a Single-View App, there is no UI required for this lab.
Use the project just to write the classes and unit tests.


**Verify that**
+ The code compiles
+ The App does not crash
+ All the classes you wrote have accompanying Unit Tests
+ All the tests you wrote pass and cover all possible cases

---

### Bonus Activities

+ Update the `Fonts` class and add the following functions:
    + `func ubuntuLight(withSize size: Int) -> UIFont?`
    + `func ubuntuBold(withSize size: Int) -> UIFont?`
    + `func ubuntuCondensed(withSize size: Int) -> UIFont?`

+ Write Unit Tests for each of the above.

Create a File with the following class:

```js

class Calculator {

    func add(one: Int, two: Int) -> Int {
        return one + two
    }

    func multiply(one: Int, two: Int) -> Int {

        if one == 0 || two == 0 {
            return 0
        }

        if one == 1 {
            return two
        }

        if two == 1 {
            return one
        }

        var sum = one

        for _ in (1...two) {
            sum += one
        }

        return sum
    }

    func divide(one: Int, two: Int) -> Int {
        return two/one
    }
}

```

+ Write Test Cases for all of the methods included.

+ Did you find any cases where the code above doesn't work?
    + If so, update the code so it does work.

---

# Additional Resources

+ [Debugging Tutorial](https://developer.apple.com/videos/play/wwdc2014/413/)
