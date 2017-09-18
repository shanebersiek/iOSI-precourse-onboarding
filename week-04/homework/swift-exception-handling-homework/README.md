---
title: Error handling
type: Homework
duration: "2:00"
creator:
    name: Rudd Taylor
    city: NYC
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Error handling

> ***Note:*** _This homework should be done independently._

## Exercise

By the end of this homework, you should be able to add graceful error handling to a given app that makes network connections.

#### Requirements

- Add network connection failure error handling to the application (via the returned NSError pattern).
- Add invalid response syntax error handling to the application (via the do/try/catch pattern).

**Bonus:**

- Add an initializer for the model class in the application which accepts a JSON dictionary as a parameter, and throws an error if that JSON dictionary is of the incorrect pattern.

#### Starter code

Here is the [starter code for this assignment](/starter-code). This consists of an application with two screens, each of which makes a network connection. One succeeds when there is a network connection, but does not communicate any failure to the user when the device is in airplane mode. The other expects JSON of one format, but receives it in another. It does not communicate this failure to the user. Your task is to surface these errors to the user, either by printing out the error to a label or by using a UIAlertController.

#### Deliverable

Fork this repository using Github, then clone your fork to your computer. Navigate to this folder. 
- Open the project in this folder, modify it as instructed above.
- Commit your changes to your fork and create a pull request. This is your homework submission.

#### Assessment

Your edited project should meet all of the specifications described, and [will be evaluated by the following rubric](/rubric.md). Still can't figure it out? Talk with your instructor and review the solution code.