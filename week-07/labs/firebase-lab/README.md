---
title: "Firebase Lab"
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Firebase Lab

## Introduction

#### What we are doing

In this lab, we will practice using Firebase to build connected Apps.

> ***Note:*** _This lab is designed to be done using pair-programmed, but can be done independently._


#### Why we are doing it

Firebase makes it simple to create apps that use your own accounts. With Firebase you can easily
build chat applications, handle user account information, add push notifications, and more.


## Exercise

In this lab, you will modify the Notes App you did for the [Data Persistence Lab](https://github.com/generalassembly-studio/iOSI-course-materials/tree/master/curriculum/04-schedule-and-supplies/week-05/baseline-materials/data-persistence-lab) and integrate it with Firebase.

Use Firebase to make the notes app sync to your Firebase database.


### Requirements

+ Bring in the [starter code](starter-code) (the solution code from the Data Persistence Lab)

+ Use Firebase instead of `UserDefaults` to persist a User's Notes

+ Ensure that when you open the app on multiple devices, the same notes are loaded

+ Add a few new notes - ensure the new notes show up in your Firebase project

### Starter code

Use the same project from the [Data Persistence Lab](https://github.com/generalassembly-studio/iOSI-course-materials/tree/master/curriculum/04-schedule-and-supplies/week-05/baseline-materials/data-persistence-lab).

### Solution Code

There is no solution code for this Lab.

## Deliverables

Turn in your XCode Project with your App.

**Verify that**

+ Your App never crashes
+ Your code compiles
+ Your tests pass
+ Run the App on at least 2 Simulators, and a real device.
    + Ensure that each device displays the same notes.

### Bonus Activities

+ Use the [UIRefreshControl](http://stackoverflow.com/a/24476087/474048) to add pull-down-to-refresh to the Notes app. It should reload the notes from Firebase.

+ Use the [UIImagePickerController](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIImagePickerController_Class/) to give users the ability to save a picture with a Note

+ Give users the ability to share a Note with social media, using [UIActivityViewController](http://nshipster.com/uiactivityviewcontroller/)

+ Write some Unit Tests for the data persistence logic

# Additional Resources

+ [Swift Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1)
+ [Firebase](https://firebase.google.com/)
+ [Firebase iOS Setup](https://firebase.google.com/docs/ios/setup)
+ [UIImagePickerController](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIImagePickerController_Class/)
+ [UIActivityViewController](http://nshipster.com/uiactivityviewcontroller/)
