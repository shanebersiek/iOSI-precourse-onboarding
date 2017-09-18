---
title: "Arrays Lab"
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Arrays Lab

## Introduction

#### What we are doing

In this lab, we will practice using and creating Arrays.

> ***Note:*** _This lab can be done independently or in pairs._


#### Why we are doing it

An Array is a fundamental Computer Science Data Structure. An Array is an ordered collection of values that give programs the ability to store an arbitrary amount of data.

Arrays are the reason why your Twitter Feed has more than one tweet, why your Instagram Home Page has more than one photo, and why you can read this right now.

## Exercise

### Requirements

Using a new Playgrounds project, solve the following problems:

**Basic**

+ Write a function that takes an Int, and returns an Int Array with that size. Any numbers will do.
>
    ```js
    arrayOfSize(size: 4) -> [21, 1, 24, 634]
    ```

+ Write a function `numbersUpTo(Int) -> [Int]` that takes an Int, and returns an Array of Ints containing the numbers from 0 up to, but not including, the argument.
>
    ```js
    numbersUpTo(number: 10) -> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    ```

+ Write a function `numbersBetween(Int, Int) -> [Int]` that returns an Array with all of the numbers between the two arguments (inclusively).
>
    ```js
    numbersBetween(from: 3, to: 7) -> [3, 4, 5, 6, 7]
    ```

+ Write a function that takes an Array of Ints and swaps the first and the last elements with each other.
>
    ```js
    swapFirstAndLast([2, 45, 6, 7, 13]) -> [13, 45, 6, 7, 2]
    ```

+ Write a function that takes an Array of Ints. For each number that is a multiple of 5, it doubles it.
>
    ```js
    [1, 24, 436, 500] -> [1, 24, 436, 1000]
    ```

**Strings**

+ Write a function that takes an Array of Strings and returns a single String that joins them all.

+ Write a function `containsString(String, [String])` that checks whether the array contains the string argument.
>
    ```js
    containsString("Honey", ["Winnie", "The", "Poo"]) -> false
    ```
    
    + Write a similar function, `containStringIgnoringCase(String, [String])` that checks whether the strings are equal, while ignoring the case. For instance, "MONEY" is contained in ["money", "problems", "politics"].


+ Write a function `repeatString(String, Int) -> [String]` that takes a String and an Int `numberOfRepeats`, and returns an Array with the String repeated `numberOfRepeats` times.
>
    ```js
    repeatString("Xo", 3) -> ["Xo", "Xo", "Xo"]
    ```

+ Write a function `toLowerCase([String])` that takes and Array of Strings and returns a new array with all the strings lower-cased.

+ Write a function `reverse([String])` that takes an array of strings, and returns an Array with the elements reversed. Do this without using the built-in reverse function.

**Math**

+ Write a `maxValue()` function that takes an Array of Ints and returns the greatest value.
>
    ```js
    maxValue([2, 35, 12, 112]) -> 112
    ```

+ Write a `minValue()` function that takes an Array of Ints and returns the smallest value.
>
    ```js
    minValue([13, 436, 7657, 23, 4]) -> 4
    ```

+ Write a function that takes an Array of Ints and determines how many are even.

+ For each one of the following, write a function that takes an Array of Ints and:
    + returns the average
    + returns the sum
    + returns the square of all the elements

+ Write a function `toFahrenheit([Int]) -> [Int]` that takes an Array of Fahrenheit temperatures and returns an Array of celsius temperatures.

+ Write a function `combine([Int], [Int]) -> [Int]` that takes two Int arrays and combines them, returning the result.
>
    ```js
    combine(first: [1, 2, 3, 4], second: [5, 6, 7, 8]) -> [1, 2, 3, 4, 5, 6, 7, 8]
    ```

### Starter code

Starter Code can be found in the [starter-code](starter-code) folder.
In here you will find utility functions that help you generate Arrays of Strings and Ints for use in testing.


### Solution Code
Solution code can be found in the [solution-code](solution-code) folder.

## Deliverables

Turn in your code in a single Playgrounds Project.

**Verify that**

+ Your code compiles
+ All the examples are solved using functions
+ Your called your functions using different inputs
+ Your code produces the correct result


### Bonus Activities

+ Write a function that takes two Int Arrays and [merges](https://lh5.googleusercontent.com/APLe8RZNQSxx1fGInNMhg1hF5Yl5q0rKEDSDNSB7FLmt5VMwkxd-qOtQhJRih4dz73Q-11SdfXO3tWLh_zTU6y_HubGy1Nd4ILGDTVZaOjHdLRj9MQBm9w4kypOUsxzShAhrW3c) the elements together, returning the result. A merge takes the first element of the first array, then the first element of the second array, then the second element of the first array, so on so forth.
for example:
>
    ```js
    merge([2, 22, 42, 23], [35, 32, 5, 6 13]) -> [2, 35, 22, 32, 42, 5, 23, 6, 13]
    ```
> Note: You are not expected to sort the elements, just sort them.

+ Write a function `consecutiveMutiplesOfThrees([Int]) -> Int` that takes an Array of Ints, and returns the number of times a multiple of `3` appears in the Array consecutively.
>
    ```js
    consecutiveThrees([1, 2, 3, 4, 5]) -> 0
    consecutiveThrees([35, 33, 15, 7, 6, 9, 12]) -> 2
    consecutiveThrees([3, 6, 9, 12, 15]) -> 1
    ```

# Additional Resources

+ [Swift Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1)
+ [Swift Collections](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html)
