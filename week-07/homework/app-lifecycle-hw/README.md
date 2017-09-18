---
title: "App Lifecycle HW"
type: HW
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) App Lifecycle HW

## Introduction

#### What we are doing

For HW, you will try to better understand the app lifecycle.

> ***Note:*** _This lab is designed to be done using pair-programmed, but can be done independently._


#### Why we are doing it

"All that begins, must end."
<br>
*- Japanese Proverb*

Apps go to sleep, they wake up, take breaks, and are killed.

Knowing application lifecycles allows your app to respond to the user launching, exiting, and killing your app.

## Exercise

For this exercise, create a simple Single-View Application - any theme will do!

### Requirements

**Application Lifecycle**

+ Open the main ViewController and override each of the following and add print statements with whatever messages you want!
    + `viewDidLoad()`
    + `viewWillAppear()`
    + `viewDidAppear()`
    + `viewWillDisappear`
    + `viewDidDisappear()`

Then, start the app, kill the app, go to the home screen, come back to the app, etc. and watch the Xcode console.  

States to be tested:

Launch time:
- application:willFinishLaunchingWithOptions:
- application:didFinishLaunchingWithOptions:

Transitioning to the foreground:
- applicationDidBecomeActive:

Transitioning to the background:
- applicationDidEnterBackground:

Transitioning to the inactive state
- applicationWillResignActive: (Called when leaving the foreground state.)
- applicationWillEnterForeground: (Called when transitioning out of the background state.)

Termination:
- applicationWillTerminate: (Called only when the app is running. This method is not called if the app is suspended.)



### Starter code

There is no starter code for this Lab.

### Solution Code

There is no solution code for this Lab.

## Deliverables

Turn in your XCode Project with your App.

**Verify that**

+ Your App never crashes
+ Your code compiles


### Bonus Activities

+ Call the App's `registerUserNotificationSettings()` method from your AppDelegate to register for notifications.
    + Handle the case where the user rejects notifications.

+ Add a second ViewController to the App, where the first segues to the second.
    + Override `viewWillDisappear()` on the first, setting the background to Red.
    + Override `viewDidAppear()` on the second, setting the background to blue.


# Additional Resources

+ [Swift Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1)
+ [App Lifecycle Documentation](https://developer.apple.com/library/ios/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/TheAppLifeCycle/TheAppLifeCycle.html)
+ [View Controller Lifecycle](https://developer.apple.com/library/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson4.html#//apple_ref/doc/uid/TP40015214-CH6-SW3)
