---
title: OAuth Lab
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) OAuth Lab

## Introduction

#### What we are doing

In this lab, we will use OAuth to build a basic Twitter client.

> ***Note:*** _This lab can be done in pairs or independently._


#### Why we are doing it

It is unsafe to give unknown applications your passwords. Once an application has your password, they can do nefarious things
behind your back. OAuth fixes this by creating temporary access tokens, giving power back to the users. They can be
revoked at anytime, effectively denying access to the user.

Using OAuth gives you the ability to add "Login with Facebook", "Login with Twitter", etc, to your Apps.

## Exercise

Make a Twitter Client to retrieve the 20 most recent tweets from a provided Twitter account and display the text and date on the screen.
The user should have the ability to type in Twitter handle see it's tweets.

+ [Register your app on twitter](https://apps.twitter.com/)
+ [If you are not doing the bonus, use this authentication flow](https://dev.twitter.com/oauth/application-only)
+ [If you are doing the bonus, use this authentication flow](https://dev.twitter.com/web/sign-in/implementing)

### Requirements

Your app should:

+ Display the 20 most recent tweets from a given user
+ Display the tweet text and date
+ Allow the user to type in any Twitter username to display that user's tweets


**Verify that:**

+ Your code compiles
+ You app does not crash


### Starter code

There is no starter code for this lab.


### Solution Code

There is no solution code for this lab.

---

## Deliverables

Turn in your XCode project.


### Bonus Activities

+ Add the ability for a user to sign in with their twitter account

+ Add the ability for a user to tweet something

# Additional Resources

+ [Official Apple Developer Website](https://developer.apple.com/library/ios/navigation/)
+ [Twitter Authentication - App Only](https://dev.twitter.com/oauth/application-only)
+ [Twitter Authentication - User Login](https://dev.twitter.com/web/sign-in/implementing)
