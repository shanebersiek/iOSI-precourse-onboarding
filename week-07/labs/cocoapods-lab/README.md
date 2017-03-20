---
title: Cocoapods Lab
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Cocoapods Lab

## Introduction

#### What we are doing

In this lab, we will practice evaluating Cocoapods and integrating it into existing projects.

> ***Note:*** _This lab should be done independently._


#### Why we are doing it

Why re-invent the Wheel when you can just `import` it? One of the best parts of iOS development is the highly-active Open Source community.

Cocoapods makes it easier to use Open Source libraries and integrate them in your project. It manages dependencies and versions. This is very useful as your app grows in size.

## Exercise

### Requirements

+ Evaluate at least 2 different Cocoapods, by searching for different libraries on Cocoapods.
    + For each Pod, find the source.
    + Who are the creators and maintainers?
    + How many stars on Githb?
    + How many active issues? How old are the oldest bugs that haven't been fixed? Do the maintainers seem responsive?
    + Browse the source. Does it appear well structured?
    + Are there any well-known apps using the pod/library?
    + How many installs does the pod claim?
    + Is there a homepage for the pod? Does it appear active?
    + Is there API documentation and/or a wiki? How well-documented does it appear?

+ Create a new XCode Project.
    + Create a `Podfile` for the project.
    + Add one of the libraries that you researched above to the Podfile.
    + Run `pod install` to download the repositories.
    + Open the workspace in Xcode, and try to build the project.
    + Ensure everything builds and that the Pods are installed.
    + Run the project in a emulator.


**Verify that**
+ The workspace and project build successfully
+ You used Cocoapods
+ The app runs successfully in the Simulator

### Starter code
There is no starter code for this lab.


### Solution Code

There is no solution code for this lab.

---

## Deliverables

For the Cocoapods evaluation, turn in a written report on your findings in an `evaluation.md` file.  It can be as simple as answering the questions posed above.

For the integration, turn in a an XCode Workspace with at least one successfully integrated Cocoapod library.

### Bonus Activities

+ Integrate these Cocoapods in a previous project/lab or app

+ Evaluate 4 Cocoapods

+ Integrate at least 3 Cocoapods
    + Use the pods you downloaded in an app from a previous lab


# Additional Resources

+ [Official Apple Developer Website](https://developer.apple.com/library/ios/navigation/)
+ [Interface Builder](https://developer.apple.com/xcode/interface-builder/)
+ [Autolayouts Guide](https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/AutolayoutPG/)
