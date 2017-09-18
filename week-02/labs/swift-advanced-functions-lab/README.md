---
title: "Swift Advanced Functions Lab"
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Swift Advanced Functions Lab

## Introduction

#### What we are doing

In this lab, we will continue practicing functions in Swift. We will also practice using Functional Programming using higher-order functions and closures.

> ***Note:*** _This Lab should be done independently._


#### Why we are doing it

Functional Programming and Closures are used all throughout Swift. To use many iOS APIs - an important concept/tool when using data from the web - like animations, we must use Functional Programming. Using Functional Programming allows for separation-of-concerns by emphasizing function composition and delegation. This reduces the risk for runaway complexity and allows the codebase to remain simple while new features are added.

Closures are also essential for doing work in the background, such as loading data from the internet.

## Exercise

### Requirements

Using a new Playgrounds project, solve the following problems:

**Basic**

+ Given the following function,
> Write the yo() function into your Playgrounds file
>
    ```js
    func yo() {
        print("yo")
    }
    ```
    
    Write a function called `callMultipleTimes()` that takes two parameters, a number `repeatCount`, and a *no-arg function*.
    This function should call the no-arg function `repeatCount` times.
    + Pass `(100, yo)` to the function
    + Pass `(5, yo)` to the function
    + Pass `(1, yo)` to the function
    + Pass `(0, yo)` to the function
    + Pass `(-1, yo)` to the function
    + Call the `callMultipleTimes()` function using an inline Closure. You can just print something or do something else.


**Strings**

+ Write a recursive function that returns the reverse of a string.
>
	```
	reverse("Dido") -> "odiD"
	reverse("Samurai") -> "iarumaS"
	```

+ Write a recursive function that counts how many times, if any, a String `subString` appears in a larger String, `text`.
>

	```js
	countTimes("catcowcat", "cat") → 2
	countTimes("catcowcat", "cow") → 1
	countTimes("catcowcat", "dog") → 0
	```


**Math**

+ Write a function `createIncrementer()` that returns an increment function, of type `() -> (Int)`. Every time you call the function returned, you get a number that is `+1` more than the last.
    + Rewrite `createIncrementer()` to take two parameters: `start`, which determines what number to start incrementing from, and `step`, which determines how much to add each time.

    > For example,
    >
    ```js
    let incrementer = createIncrementer(5, 2)
    incrementer() //Expect 5
    incrementer() //Expect 7
    ```

+ Write a recursive function that takes a number `n` and computes its [factorial](https://www.mathsisfun.com/numbers/factorial.html).

+ Write the following functions. They all take a single Int parameter.
    + `identity: (Int) -> (Int)` |  returns the argument unchanged
    + `square: (Int) -> (Int)` | returns the number squared
    + `cube: (Int) -> (Int)` | returns the number cubed
    + `squareRoot: (Int) -> (Int)` | returns the square root of the number. Use the built-in `sqrt()` function.
    + `exponent: (Int) -> (Int)` | returns the argument. exponentially raised by itself, for example, `8^8 = 16777216`.

+ Write a function that takes an `Int` and another function `(Int) -> (Int)`. It prints the result of passing the `Int` argument to the function argument.
    + Test these functions using all of the `(Int) -> (Int)` functions written above _(identity, square, cube, etc)_.



**Logic**

I am a Barista at the local coffee shop. My productivity depending on the day. On Tuesdays, Wednesdays, and Thursdays, I can serve 55 customers in a one hour span. On Mondays, I am terrible and can only serve about 10 customers in the same time span. On Fridays, I am usually excited for the weekend, so I can easily serve 45 customers in 30 minutes.

+ Write a higher-order function that that tells me how many hours it would take for me to serve 100 customers depending on the day. Use function decomposition. Expect the day to be passed in using a `String`, for example, "Tuesday" (Title-Cased).


> ***Note*** - the following exercise uses Military Time.        

+ You're tired, and you really want some coffee. The Coffee Shop is open during the day (06-12), closes for a lunch break (12-13), reopens at 1pm (13-18), and closes at night (18-06).

    + Write a function that takes an Int representing the hour, and returns whether the Store is open or not at that hour.

    + Write another function called `enter()` that takes the first function, and an hour. This functions prints "Come on in!" if the store is open, or "Sorry, we're closed" if the store is closed.


### Starter code
There is no starter code.


### Solution Code
Solution code can be found in [solution-code](solution-code).

## Deliverables

Turn in your code in a single Playgrounds Project.


**Verify that**
+ Your code compiles
+ All the examples are solved using functions
+ Your tested your functions using different inputs
+ Your code produces the correct result


---

### Bonus Activities

**Math**

+ Given an integer, write a function to determine if it is a power of three

+ Given a non-negative integer num, add all its digits together.
>For example: num = 38, the process is like: 3 + 8 = 11

**Logic**

We have birds standing in a line, numbered 1, 2, ... The odd birds (1, 3, ..) have the normal 2 red feathers. The even birds (2, 4, ..) have 3 red feathers.

+ Use recursion to return the number of "feathers" in the bird line 1, 2, ... n (without loops or multiplication).
	>
	```js
	feathers(0) → 0
	feathers(1) → 2
	feathers(2) → 5
	```

+ Write a function that takes any integer from `1...399` and coverts it to a Roman Numeral string.

    > For example,
    > 
    ```js
    romanNumeral(10) -> "X"
    ```


**Strings**


+ Write a function that takes an Int in String form, like "3914", and converts it to a native Int type, without using the built-in casting or type conversion.

	> 
	```js
	toInteger("4039") -> 4039
	```
	

---

# Additional Resources

+ [Swift Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1)
+ [Swift Strings](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html)
+ [Swift Functions](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID158)
+ [Factorials](https://www.mathsisfun.com/numbers/factorial.html)
