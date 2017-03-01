---
title: Retrieve Data from an API Lab
type: lab
duration: "1:25"
creator:
  name: James Davis 
  city: NYC
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Retrieve Data from an API Lab

## Introduction

#### What are we doing?

In this lab, you will be exploring the [Flickr API](https://www.flickr.com/services/api/). Use the prompts below to find the correct API call.

#### Why are we doing it?

Before making network calls from an iOS device, it's important to know how to look through and leverage API documentation.  The ability to read API documents makes integration so much easier.

## Exercise

#### Requirements

First, sign up for a Yahoo! account (sorry, there's no way to avoid it). Get the API key and save it somewhere.

> Allocate 15 minutes for each task.

- Task #1: Find the api call that allows you to search for all images of "cats".

- Task #2: Find the api call that allows you to search for all images from "Charlotte, North Carolina."

- Task #3: Get all of the comments for any photo.

- Task #4: Search for a list of all the photos at your current latitude and longitude.



#### Starter code

There is no starter code for this lab.


#### Solution Code

There is no solution code for this lab.

#### Deliverable

A [answers.md](answers.md) file with all the correct API. If you attempt or complete the bonus, include your swift code in the pull request.


### Bonus Activities

- For each task/API endpoint, write Swift code that calls the API and returns a JSON object
- For task #1, using Xcode, write a script that hits the API endpoint you've identified, loops through the returned data, and prints out (to the console) just the URL of each cat image
- For task #3, using Xcode, write a script that hits the API endpoint you've identified, loops through the returned comments for the first photo at your current lat/long, and prints out (to the console) the first word of each comment...backwards!

# Additional Resources

+ [Swift Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1)
