---
title: "iOS Versions Lab"
type: Lab
duration: "1:25"
creator:
    name: Zeke Abuhoff
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) iOS Versions Lab

## Introduction

#### What we are doing

In this lab, we will branch the control flow of an app to account for various iOS versions.

> ***Note:*** _This lab can be done collaboratively or independently._


#### Why we are doing it

User adoption of newly released iOS versions is typically high, but never 100 percent. One must always remember that a good number of users don't have access to the latest system features. To write code that serves both up-to-date users and those a version or two behind, you'll have to set the target version lower and account for every use of new features.

## Exercise

Populate the table view in the starter code project with names from user contacts (acquired through whichever API is appropriate for the iOS version).

### Requirements

+ In the starter code project, set the target iOS version to 8.0
+ Create a class that retrieves the user's contact information via ABAddressBook (it should be able to detect contact access authorization, request authorization and retrieve contacts)
+ Create a class that does everything your address book class does, but via the Contacts library
+ Populate the table view in ViewController with the given names of contacts (each contact should be a cell in the table view with a text label of the contact's given name)
+ Use ```#available``` and ```@available``` to make the view controller select which class to use for contact retrieval based on iOS version

### Starter code

Starter code can be found in the [starter-code](starter-code) folder.

### Solution Code

Solution code can be found in the [solution-code](solution-code) folder.

## Deliverables

Turn in a version of the starter code project that shows contact names in a table, using ABAddressBook when it's running on iOS 8 and using Contacts when running on iOS 9 or 10.

---

### Bonus Activities

+ Log the iOS version when ViewController loads.
+ Set the target version to 7.0 and make sure the iOS version log still happens.

---

# Additional Resources

+ [Backward Compatibility the Smart Way](https://www.hackingwithswift.com/new-syntax-swift-2-availability-checking)
