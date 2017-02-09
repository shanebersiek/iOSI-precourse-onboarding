---
title: "Swift Conditionals Lab"
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Swift Conditionals Lab

## Introduction

#### What we are doing

In this lab, we will practice using Swift Conditionals, `if`, `else`, and `switch` to write intelligent code.

> ***Note:*** _This can be a pair programming activity or done independently._


#### Why we are doing it

Conditionals represent a fundamental programming concept. They are used in _every_ App, from Calculator to Facebook.

## Exercise

### Requirements

Using a new Playgrounds project, solve the following problems:

+ Given an Integer `sides`, print the name of the polygon with that number of sides
> For example, 4 => print("Square")

+ Given a temperature (in Fahrenheit), print a suggestion of what to wear
> For example, -40 => print ("Don't go outside")

+ Given an hour (from 1 to 24), print the time of day.  Use the following in your print message:
    + Dawn
    + Early Morning
    + Morning
    + Noon
    + Afternoon
    + Dusk
    + Evening
    + Night


+ Given a person's age, print a String saying what era of their life they are in. For example, someone who is 27 is in their "20s".


+ Given a student's grade for an example, print their Letter grade.
> For example:
```js
90% -> "A",
80% -> "B"
```

+ The number 6 is a truly great number. Create two Integers `num1`, `num2`, print "Awesome" if either one is 6, or if sum or difference of those two numbers is 6.
> Assign the two numbers any values, and test them.

+  We have two monkeys, Freddy and Jason, and the variables `freddyIsSmiling` and `jasonIsSmiling` indicate if each is smiling. We are in trouble if they are both smiling or if neither of them is smiling. Print "Trouble" if we are in trouble. Otherwise, print "Not in trouble".


### Starter code
Starter code can be found in [starter-code](starter-code) should you need it.


### Solution Code
Solution code can be found in [solution-code](solution-code).

## Deliverables

Turn in your code in a single Playgrounds Project.

**Verify that**
+ Your code compiles
+ Your code runs correctly
+ Your code produces the correct result


### Bonus Activities

+ Given 3 integers, `a, b, c`, print the largest one.
    + Rewrite to print the smallest one

+ Given an Integer from `1 - 7`, print out the name of the day.
> For example
```js
1 -> "Monday",
2 -> "Tuesday", etc
```

+ The squirrels in Palo Alto spend most of the day playing. In particular, they play if the temperature is between 60 and 90 (inclusive). Unless it is summer, then the upper limit is 100 instead of 90. Given an `Integer` temperature and a `Bool` isSummer, print "Playing" if the squirrels play and "Not Playing" otherwise.

+ There are 88 keys in a piano. Given a number from `1 - 88`, print out the name of the key, (C, D, E, F, G, H, etc)

# Additional Resources

+ [Official Apple Developer Website](https://developer.apple.com/library/ios/navigation/)
+ [Swift Control Flow](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID120)
+ [Further Examples](https://www.weheartswift.com/conditionals/)
