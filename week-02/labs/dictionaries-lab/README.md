---
title: "Dictionaries Lab"
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Dictionaries Lab

## Introduction

#### What we are doing

In this lab, we will practice using and creating Dictionaries.

> **Important Note:** Dictionaries are also known as *Hash Maps*, or *Maps*.

> ***Note:*** _This lab can be done independently or in pairs._


#### Why we are doing it

A Dictionary is a fundamental Computer Science Data Structure. A Dictionary is a collection of Key-Value pairs that give programs the ability to make simple relationships between data, the foundational idea behind a database.

Dictionaries are what allow Facebook to know which profile picture to display for a user, Instagram to know who a Photo belongs to, and Google to know what search results to show you.

## Exercise

Unless otherwise specified, all Dictionaries are of type `[String : String]`.

### Requirements

Using a new Playgrounds project, solve the following problems:

+ Create a Dictionary that contains a list of things you eat on a given day, i.e. "Monday", "Tuesday", etc.

    ```js
    meals["Monday"] -> ["Tacos", "Nuts"]
    ```

+ Write a function that takes two Dictionaries of Strings and returns the combination.

    ```js
    let dictionary1 = [
        "Milk" : "Cookies",
        "Peaches" : "Cream"  
    ]

    let dictionary2 = [
        "Yin" : "Yang",
        "Fries" : "Ketchup"
    ]

    combine(first: dictionary1, second: dictionary2) -> [
        "Milk" : "Cookies",
        "Peaches" : "Cream",
        "Yin" : "Yang",
        "Fries" : "Ketchup"
    ]
    ```
    > If the two Dictionaries share a Key, use the one in dictionary1.
    >Tip: This function is otherwise known as a union of two dictionaries.


+ Write a function that takes two Dictionaries and determines whether they are the same (without using `map1 == map2`).

    ```js
    let dictionary1 = ["Oolong" : "Tea"]
    let dictionary2 = ["Oolong" : "Chinese"]

    areEqual(dictionary1, dictionary2) -> false
    ```
    > Note: The Keys and the values in both must match


+ Write a function that takes two Dictionaries and returns an Array of the Keys they have in common

    ```js
    let match1 = [
        "Location" : "Arlington",
        "Total Points" : 33,
        "Outcome" : "Loss"
    ]

    let match2 = [
        "Location" : "Seattle",
        "Total Points" : 33,
        "Outcome" : "Win"
    ]

    haveSameKeys(match1, match2) -> true
    ```

+ Write a function that takes an Array of Ints, and returns a Dictionary `[Int: Int]` detailing how often a number appeared.

    ```js
    let array = [1, 4, 2, 4, 5, 1, 4]

    numberCount(array) -> [
        1 : 2, //1 appeared twice
        4 : 3, //4 appeared thrice
        2 : 1, //2 appeared once
        5 : 1 //5 appeared once
    ]
    ```
    > Note: This is otherwise known as a Histogram.

+ Write a function that takes an Array of Strings and tells the user which one appeared the most.

    ```js
    let words = ["Dining", "The", "Consumer", "Retail", "Journal", "Retail", "The", "Push", "The"]

    mostPopularWord(words) -> "The"
    ```

+ Write a function that takes a Dictionary representing a team's season record, and deviously replaces all the wins with losses.

    ```js
    let matches = [
        "Match 1" : "Win",
        "Match 2" : "Win",
        "Match 3" : "Win",
        "Match 4" : "Loss",
        "Match 5" : "Loss",
        "Match 6" : "Win"
    ]

    hackTeam(matches) -> [
        "Match 1" : "Loss",
        "Match 2" : "Loss",
        "Match 3" : "Loss",
        "Match 4" : "Loss",
        "Match 5" : "Loss",
        "Match 6" : "Loss"
    ]
    ```
    + As a follow-up, write a function `reverseResults()` that reverses the Wins and Losses of a team.

    ```js
    reverse(matches) -> [
        "Match 1" : "Loss",
        "Match 2" : "Loss",
        "Match 3" : "Loss",
        "Match 4" : "Win",
        "Match 5" : "Win",
        "Match 6" : "Loss"
    ]
    ```

+ Write a function that takes an intersection of two Dictionaries.


### Starter code

Starter code can be found in the [starter-code](starter-code) folder. In here you will find utility functions that help you generate Dictionaries, Strings, and Ints for testing purposes.


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

+ Create a Map of businesses that allows me to look up information on a business. Do this for 5 businesses. You can include whatever you would like to, for instance: CEO, Website, Founding Year, HQ, etc.

    ```js
    businesses["Amazon"]["CEO"] -> "Jeff Bezos"
    ```


+ Write a function that takes an Array of Strings and tells me which one appeared the most, ***ignoring case***.

    ```js
    let words = ["Dining", "the", "Consumer", "Retail", "Journal", "Retail", "the", "Push", "The"]

    mostPopularWord(words) -> ( "The" || "the")
    ```

+ Write a function that takes two Dictionaries of Strings and returns the intersection between them, i.e. the keys and values that they have in common.

    ```js
    let topClothes2014 = [
        "Shoes" : "Kenneth Cole",
        "Jacket" : "Zara",
        "Jeans" : "True Religion"
    ]

    let topClothes2015 = [
        "Shoes" : "Adidas",
        "Jacket" : "Zara",
        "Jeans" : "True Religion"
    ]

    intersectionOf(mapOne: topClothes2014, mapTwo: topClothes2015) -> [
        "Jacket" : "Zara",
        "Jeans" : "True Religion"
    ]
    ```
    >Note: Both the key and the values must match.

# Additional Resources

+ [Swift Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1)
+ [Swift Collections](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html)
