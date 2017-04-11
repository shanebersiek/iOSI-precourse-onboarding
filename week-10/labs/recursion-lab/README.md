---
title: "Recursion Lab"
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Recursion Lab

## Introduction

#### What we are doing

In this lab, we will practice using and creating Recursive Functions.

> ***Note:*** _This lab can be done independently or in pairs._


#### Why we are doing it

Recursion is a programming technique that is used to make certain functions simpler. They are often brought up during interview questions. Understanding how they work and how to write them will lead to better interview results and increase the chance of landing a job.

These exercises are designed to help you feel confident writing recursive functions.

## Exercise

### Requirements

Open the starter code and solve the problems in the `Recursion.swift` file.
Your solutions must pass the unit tests.

_All Functions are expected to be written recursively._

+ Write a function that takes an integer and prints all of the numbers from 1 to that number.

For example,

```
Recursion.printFirst(n: 13)
```
would print

```
12
11
10
... //all the way until...
1
```

+ Write a function that takes an integer and prints all of the numbers from 1 to that number.

For example,

```
Recursion.printFrom(n: 5)
```
would print
```
5
4
3
2
1
```

+ Write a recursive [fibonacci](https://www.mathsisfun.com/numbers/fibonacci-sequence.html) function that takes a number `n` and returns the `n`-th fibonacci number. The first two fibonacci numbers are 1, and the rest are the sum of the previous two.
`[1, 1, 2, 3, 5, 8, 13, 21, 34]`


+ Write a recursive factorial function that takes an integer `n` and returns its factorial.

> Recap: The factorial of a non-negative integer, n, denoted n!, is the product of all of the positive integers less than or equal to n. The value of 0! is defined as 1.

For example,
```
factorial(n: 5) // 5*4*3*2*1 = 120
```

### Starter code
Starter Code can be found in the [starter-code](starter-code) folder.

### Solution Code
Solution code can be found in the [solution-code](solution-code) folder.

## Deliverables

Turn in your code in a single Playgrounds Project.

**Verify that**

+ Your code compiles
+ Your code passes the Unit Tests


### Bonus Activities

+ Write a function that returns the greatest common denominator of two integers.

> Refresher: The Greatest Common Denominator (GCD) of two numbers is the largest positive integer that divides both numbers evenly.

For example,

```
GCD(first: 8, second: 12) == 4
GCD(first: 9, second: 27) == 9
GCD(first: 10, second: 35) == 5
```

+ Write a recursive function that takes a Linked List prints all of the elements in that linked list.

+ Write a recursive function that takes a Linked List and prints all of the elements in reverse.


# Additional Resources

+ [Swift Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1)
+ [Recursion](https://www.weheartswift.com/recursion/)
