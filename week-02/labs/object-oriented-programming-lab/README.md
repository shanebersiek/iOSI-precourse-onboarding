---
title: "Object-Oriented Programming Lab"
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Object-Oriented Programming Lab

## Introduction

#### What we are doing

In this lab, we will practice good object design.

> ***Note:*** _This lab is designed to be done collaboratively in groups, but could be done independently._


#### Why we are doing it

Mastering Object-Oriented Design is something that takes years of practice, but learning how to apply good Object-Oriented Design is what will take you from novice to professional, in the field of Computer Programming.

Great design makes code both easy and fun to work with.

## Exercise

In this lab we will design a phone carrier system, where people are able to call and text each other.

Keep the following in mind:
+ People have Phones
+ Phones have a number
+ Carriers have many phones and phone numbers

> Instructor Note: The requirements are kept intentionally vague so as to give students a chance to practice thinking in abstractions.

### Requirements

Create classes for each of the following - Carrier, Phone, and Person - based on the requirements below.  Then, follow the requirements in the "Implement" section to make sure your code works as expected.

**Carrier**

+ Carrier has many phones.

**Phone**

+ Phone has a carrier that it uses to place calls and deliver text messages.
+ Phone should have a function that calls another phone number. It delegates to the Carrier.
+ Phone should have a function that sends a text to another phone number.
+ Phone should contain text messages that it has received from other people.
+ Phone should have a call log for the calls it has received.
+ Phone should have a separate call log for the calls it has placed.

**Person**
+ Person should have a name.
+ Person should have a Phone.
+ Person has a function `call(Person)` that allows it to call a friend.
+ Person has a function `text(Person)` that allows it to text a friend.

**Implement**

+ Create two people, each with a phone, and have one call the other.
+ Have one text the other.


### Starter code

There is no starter code provided.

### Solution Code
Solution code can be found in [solution-code](solution-code).

## Deliverables


While there is no right answer, your designs will be graded on the following criteria:

**Composition**

How well did you design your Object relationships and how close are they to the real concept involved.

**Data Modeling**

How well did you select the appropriate data types and relationships to represent data.

**Delegation**

How well did you defer functionality to other Objects, instead of building giant classes.

**Encapsulation**

How well did you hide data and functions from other Object that don't need it.

---

Turn in your code in a single Playgrounds Project.

**Verify that**

+ Your code compiles
+ You have modeled the data using Classes
+ All of your classes can be initialized



### Bonus Activities

+ Add the following functions to the Phone.
    + `clearTextMessageWithNumber(String)` function that clears the text conversation with a specific phone number. In other words, it removes all of the messages with the specified phone number.
    + `clearAllTextMessages()` function that completely removes all text messages from a phone.
    + `clearPhoneLog()` function that clears both calls received and calls placed.
    + `getCallLog()` function that returns a combined view of calls placed and received.
    + `getConversationWith(Person)` function that returns a list of messages sent by the specified person.

# Additional Resources

+ [Swift Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1)
+ [Swift Collections](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html)

**Books**
+ [Book on Object-Oriented Design](http://www.headfirstlabs.com/books/hfooad/)
+ [Book on Design Patterns](http://www.headfirstlabs.com/books/hfdp/)

> Although these books are themed with Java, the concepts still apply.
