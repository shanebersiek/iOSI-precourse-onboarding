---
title: "Foundation Classes Lab"
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Foundation Classes Lab

## Introduction

#### What we are doing

In this lab, we will practice using basic `Foundation` classes.

> ***Note:*** _This lab should be done independently ._


#### Why we are doing it

Every house needs a foundation. The Foundation Framework provides essential classes that define basic object behavior, data types, collections, and operating-system services.

It allows the ability to work with time and dates and to present it to users in a way they can understand.

## Exercise

In this exercise, we will practice reading files using `Bundle` and working with dates and time.

### Requirements

+ Create a new app with a Table View Controller.

+ Import the text files located in the [assets](assets) folder into the project.

+ Each file should have a row on the table which corresponds to it's View Controller.

>For example
>
| Cell Name 		| View Controller
| ------------  | ------------- 
| doubles.txt   | DoublesViewController
| numbers.txt   | NumbersViewController
| times.txt     | TimesViewController

Each File/ViewController pair have their unique set of challenges below.

---

**numbers.txt**

+ Read the file into a String.

+ Print each number on a separate line.

+ Print the sum of all the numbers.

+ Display the numbers in a `UITextView`.

**doubles.txt**

+ Read the file into a String.

+ Print each number of a separate line using scientific notation.
> Note: Use the NumberFormatter

+ Display the numbers in scientific notation in a `UITextView`.

+ Print the average of all the numbers using scientific notation.

**times.txt**

+ Read the file into a String.

+ Convert the epoch timestamp into a `Date` object and print it in a human-readable form, using the `DateFormatter`.

+ Display the human-readable dates in a `UITextView`.

### Starter code

There is no started code for this lab.

### Solution Code
Solution code can be found in [solution-code](solution-code).

## Deliverables

Turn in your Xcode Project.

**Verify that**

+ Your App never crashes
+ Your code compiles
+ You successfully ready all 3 files and completed the exercises


### Bonus Activities

+ Using the same text file in Exercise 1, use a `Timer` to print all the numbers in one-second intervals.
In other words, print the first number, then a second later, print the second number, and so on.

+ Redo the View Controllers and make them Table View Controllers, so that they print each number or date on a row.

+ Add a `UILabel` to that app that counts how many seconds have passed since the App started. The label should be updated once a second.
    + Add another label that counts how many minutes have passed since the App started.

+ Write Unit Tests for the code that writes the files.

# Additional Resources

+ [Swift Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1)
+ [Bundle](https://developer.apple.com/reference/foundation/bundle)
+ [Data](https://developer.apple.com/reference/foundation/data)
+ [Date](https://developer.apple.com/reference/foundation/date)
+ [DateFormatter](https://developer.apple.com/reference/foundation/nsdateformatter)
+ [NumberFormatter](https://developer.apple.com/reference/foundation/nsnumberformatter)
+ [Timer](https://developer.apple.com/reference/foundation/nstimer)
