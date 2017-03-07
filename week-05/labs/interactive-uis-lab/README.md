---
title: "Interactive UIs Lab"
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Interactive UIs Lab

## Introduction

#### What we are doing

In this lab, we will practice creating refined interfaces by using interactive UI elements such as the `UISpinner` and
`RefreshControl`.

> ***Note:*** _This Lab can be done independently or in pairs._


#### Why we are doing it

Buttons are great, but they don't take full advantage of the capability of the touchscreen interface available on iOS devices.

Great apps communicate with users in more nuanced ways. For example, the `UIActivityIndicatorView` lets the user know that
there is an ongoing activity in the background that hasn't yet finished, or that an operation is still in progress. These effects give your apps a more professional polish.

## Exercise

Build an app that requests and displays a photo from Giphy using their API: https://github.com/Giphy/GiphyAPI

Use the public beta api key.

>**Note**: Don't forget to use the `https` protocol, as the naked `http` protocol won't work in iOS.

### Requirements

+ Read the API docs for Giphy for getting a single photo using search - make sure to use the public beta API Key, `dc6zaTOxFJmzC`

+ Write a a Single-View App that has a `UITextField` where the user can search for images.
    + Use the `UITextFieldDelegate` protocol to get events from the keyboard.

+ The app should have a `UIImageView` to show the resulting GIF Image.

+ Use a `UIActivityIndicator` to show progress when the app performs the search and when it loads the image into view.

+ Use a `UIActivityIndicatorView` to allow sharing the image on social media.

+ Add a button that allows the user to:
    + Search again
    + Clear the image
    + Cancel
> Tip: Use the `UIAlertController` to show an Action Sheet.


+ Create a "Share" button that allows the user to share the GIF on Social Media - use the [`UIActivityViewController`](http://nshipster.com/uiactivityviewcontroller/)

### Starter code
There is no starter code. Good luck!


### Solution Code
Solution code can be found in [./solution-code](solution-code).

## Deliverables

Turn in your XCode Project which includes your app.


**Verify that**
+ Your App does not crash
+ Your code compiles
+ The GIFs display properly
+ You used Autolayout in your app


### Bonus Activities

+ Create a Table-View version of the App that shows multiple Images - every time a search is made, the new GIF result is added to the top of the list

+ Setup the Table View with a  [`UIRefreshController`](http://stackoverflow.com/a/24476087) to allow pull-down-to-refresh

+ Use a `UISearchBar` instead of a `UITextField` to allow the user to Search for GIF images


# Additional Resources

+ [Official Apple Developer Website](https://developer.apple.com/library/ios/navigation/)
+ [UIAlertController](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIAlertController_class/)
+ [UIRefreshController](http://stackoverflow.com/a/24476087)
+ [UIActivityViewController](http://nshipster.com/uiactivityviewcontroller/)
