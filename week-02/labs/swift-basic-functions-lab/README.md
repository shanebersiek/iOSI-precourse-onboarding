---
title: "Swift Basic Functions Lab"
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Swift Basic Functions Lab

## Introduction

#### What we are doing

In this lab, we will practice creating basic functions in Swift. We will also practice using Computational Thinking to break down problems.

> ***Note:*** _This lab should be done independently._


#### Why we are doing it

As discussed in previous lessons, a key to Computational Thinking is the ability to decompose a problem and break it up into smaller parts. Functions allow you to capture those parts and separate them out.

As you have seen in previous labs, a single file with unrelated code mixed together gets messy, very fast. Breaking things up into functions not only reads better, it also writes better. This allows you to better organize the code and encourages thinking in terms of *levels*.

All apps use functions, even the really simple ones - we have been using functions since the first day of class. By the way, in Swift, even the `+` and `-` operators are functions!

## Exercise

### Requirements

Using a new Playgrounds project, solve the following problems

**Basic**

- Write a function that takes a name, and prints "Hello, " + name
> For example, 
> 
	```js
	sayHello("Kat") -> "Hello, Kat"
	```

+ Write a function that takes an Int and returns `true` if the number is Even, or `false` if it is Odd.


**Strings**

+ Write a function that takes a `String` and returns whether it is empty or not.
	> For example:
	>
	```js
	isEmpty("") -> true
	```


+ Write a function that returns the reverse of a string
> For example
>
	```js
	reverse("Dido") -> "odiD"
	```
	
	
+ Write a function that takes a String and an Int `numberOfRepeats` that returns the String repeated `numberOfRepeats` times
> For example, 
> 
	```js
	repeatString("Hubba", 3) -> "HubbaHubbaHubba"
	```


+ Write a function that takes two strings, and checks whether they are the same, ignoring case.
> For example,
>    
	```js
	isEqual("Quality", "Quality") -> true
	isEqual("Quality", "Quantity") -> false
 	isEqual("Quality", "quality") -> true
	```

**Conversions**

+ Write a function that converts Fahrenheit to Celsius

+ Write a function that converts Celsius to Fahrenheit

+ Write a function that converts GigaBytes to Bits

+ Write a function that converts a decimal digit, from `0...16` into a Hexadecimal String
> For instance, `10 -> "A"`


**Math**

+ Write a `max()` function that takes two Ints and returns the greater of the two
    + Write a version using a ternary operator

+ Write a `min()` function that takes two Ints and returns the lesser of the two
    + Write a version using a ternary operator

+ Given an integer, write a function that determines if it is a power of two

+ Write a function `isPrime()` that returns whether an Int is prime


### Starter code
There is no starter code.


### Solution Code
Solution code can be found in [solution-code](solution-code).

## Deliverables

Turn in your code in a single Playgrounds Project.

**Verify that**

+ Your code compiles
+ All the examples are solved using functions
+ Your called your functions using different inputs
+ Your code produces the correct result


### Bonus Activities

#### Conversions

+ Write a function that takes an RGB Color (as 3 Ints), and returns the Hexadecimal string representation.

+ Write a function that takes a Hexadecimal String representing a color, and returns a Tuple of the RGB values.


**Visual**

+ Write a function that uses loops to print a number pyramid until `100`. Write one for each of these:

```
▲ Pyramid 1

       1
      234
     56789
```

```
▲ Pyramid 2

    1
   212
  32123
 4321234
```

```
▲ Pyramid 3

    1
   121
  12321
 1234321
```


# Additional Resources

+ [Swift Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1)
+ [Swift Strings](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html)
+ [Swift Functions](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID158)
