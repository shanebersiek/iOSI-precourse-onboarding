---
title: "Test-Driven Development Lab"
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Test-Driven Development Lab

## Introduction

#### What we are doing

In this lab, we will practice doing Test-Driven Development, or TDD.

> ***Note:*** _This lab is designed to be done using pair-programmed, but can be done independently._


#### Why we are doing it

TDD is a philosophy about writing code that is popular at tech companies like Pivotal.
The core TDD doctrine is to write your test first, and then write the main code until the test passes.

By writing tests first, developers are forced to think about the end-goal first.


> Note: TDD is *an approach* to writing software. It is by no means a pre-requisite to writing good software.
It is very controversial and you will find many conflicting opinions on it. If it helps you write better code, use it.

## Exercise

When doing these exercises, remember to use TDD and write the tests first.


### Requirements

**Prep-Work**

+ Open the project in the [starter-code](starter-code) folder.

+ Update the `JSONFiles` class so that it can read all of the JSON files into a `String`.
    + `.facebook`
    + `.googleMaps`
    + `.twitter`
    + `.youtube`

---


Now that you have access to the JSON, **choose one** JSON file and do the exercises below that correspond to it.

For example, if you're doing the `twitter.json` file, do the exercises specifically for that file.

---

**[colors.json](assets/json/colors.json)**

+ Write a function `(json: String) -> (colors: [String])` that takes the JSON and returns an `[String]` with the names of the colors present.
For example, `["Red", "Yellow", etc]`

+ Write a function `(colorName: String) -> (hexCode: String)` that takes a Color name and returns the Hex Code for that number.

---

**[facebook.json](assets/json/facebook.json)**

+ Write a function `(json: String) -> (posters: [String])` that takes the Facebook JSON and returns an `[String]` with the names of the people who posted.

+ Write a function `(json: String) -> (messages: [String : String])` that takes the Facebook JSON and returns an `[String : String]` with a Dictionary containing the messages mapped to the name of the people who posted them.

---
**[google-maps.json](assets/json/google-maps.json)**

+ Write a Data Structure that represents the Markers in the JSON.

+ Write a function `(json: String) -> ([Marker])` that takes the JSON and returns an Array with the markers, in order.

---
**[twitter.json](assets/json/twitter.json)**

+ Write a function `(json: String) -> (tweet: String)` that takes the JSON and returns the message in the tweet.

+ Write a function `(json: String) -> (from: String, to: String)` that takes the JSON returns a Tuple of the user who tweeted and the user the tweet was directed at.

+ Write a function `(json: String) -> ([String])` that takes the JSON and returns an `[String]` of any URLs in the Tweet.

---
**[youtube.json](assets/json/youtube.json)**

+ Write a function `(json: String) -> (poster: String)` that takes the JSON and returns the user who uploaded the video.

+ Write a function `(json: String) -> (title: String)` that takes the JSON and returns the title of the video.

+ Write a function `(json: String) -> (thumbnail: UIImage?)` that takes the JSON and returns a thumbnail image of the video.

---

### Starter code

Starter code is optional, and can be found in the [starter-code](starter-code) folder.


### Solution Code
Solution code can be found in [solution-code](solution-code).

## Deliverables

Turn in your XCode Project with your classes and tests.

**Verify that**

+ Your App never crashes
+ Your code compiles
+ Your tests pass
+ Your tests were written first

### Bonus Activities

+ Complete the exercises for at least 3 of the JSON files.

# Additional Resources

+ [Swift Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1)
+ [TDD Explanation](https://en.wikipedia.org/wiki/Test-driven_development)
+ [Bundle.main.path(forResource: String?)](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSBundle_Class/index.html#//apple_ref/occ/instm/NSBundle/pathForResource:ofType:)
