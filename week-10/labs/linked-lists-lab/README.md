---
title: "Linked Lists Lab"
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Linked Lists Lab

## Introduction

#### What we are doing

In this lab, we will practice using and creating Linked Lists.

> ***Note:*** _This lab can be done independently or in pairs._


#### Why we are doing it

Linked Lists are a basic data-structure. They are often brought up during interview questions. Understanding the model and how they operate will lead to better interview results and increase the chance of landing a job.

By the end of these exercises, you'll be able to walk a Linked List forwards and backwards.

## Exercise

### Requirements

Create a Playground or a Command Line Application to solve the following problems. Your code must pass the unit tests in the starter code.


+ Add a `count()` function to the LinkedList that determines how many elements are in the Array
    + **BONUS:** Improve this function by storing a `count` property that gets updated as elements are added and removed.

+ Add a `maxValue()` function that returns the greatest value in the LinkedList.

    ```swift
    let list = LinkedList(array: [2, 35, 12, 112])
    let max = list.maxValue() // 112
    ```

+ Add a `minValue()` function that returns the smallest value in the LinkedList.

    ```swift
    let list = LinkedList(array: [2, 35, 12, 112])
    let min = list.minValue() // 2
    ```

+ Add a `contains(element: Element)` function to the LinkedList that returns whether the list contains the specified element or not.

+ Write a function that combines two Linked Lists into one.

    ```swift
    let first = [43, 46, 6, 8]
    let second = [12, 634, 34]
    let combined = combine(first, second)

    //Prints "[43, 46, 6, 8, 12, 634, 34]"
    print(combined)
    ```

+ Create a `mutating` function `swap(first: Int, second: Int)` in the LinkedList class that swaps the elements at the specified position

    ```swift
    var list = [34, 5, 6, 234, 324, 21]
    list.swap(0, 2)

    //Prints "[6, 5, 34, 234, 324, 21]"
    print(list)
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

+ Write a function that takes a Linked Linked List and reverses it, in-place. This function reverses the order of the Linked List it is called upon.

 > For example:

    ```swift
    let linkedList = [1, 2, 3, 4, 5, 6, 7]
    linkedList.reverse()

    //Should print [7, 6, 5, 4, 3, 2, 1]
    print(linkedList)
    ```

+ Write a function that takes a Linked Linked List and returns a reversed version of the LinkedList. This function should not change the LinkedList it is called upon, but should instead return a new Linked List.

 > For example:

    ```swift
    let linkedList = [1, 2, 3, 4, 5, 6, 7]
    let reversedList = reverse(linkedList)

    //Should print [7, 6, 5, 4, 3, 2, 1]
    print(reversedList)
    ```


# Additional Resources

+ [Swift Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1)
+ [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html)
