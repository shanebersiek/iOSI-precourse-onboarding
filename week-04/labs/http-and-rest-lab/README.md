---
title: HTTP and REST Lab
type: Lab
duration: "1:25"
creator:
    name: James Davis
    city: NYC
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Practicing HTTP and REST Concepts

## Introduction

_This is a group exercise. Divide into groups of 3 or 4._

#### What are we doing?

You just learned about HTTP methods and REST. For this lab, you will identify the specific method used in particular web requests and the data sent along with the request, if any exists.

First, you and your group must choose one of the following apps:

* A custom Social Network
* A custom Clothing Store
* YouTube
* GitHub
* Instagram
* Spotify

Then, on a white board: draw out the many screens of the app you choose; draw arrows that represent HTTP requests between each screen; and label each arrow with the HTTP method associated with the request and any data that is sent with it.

Here's an example: When clicking the login screen, a POST request is made, sending the username and password to the server.

<p align="center">
  <img src="screenshots/example.png" width="1000px" />
</p>

Finally, you'll list out all the requests you've identified and take pictures of your drawings. Both of these will be submitted as your deliverables.

#### Why are we doing it?

Understanding how the web works is crucial for working with and troubleshooting programming issues you may encounter when getting and sending data to the web.

## Exercise

#### Requirements


* Draw a multi-screen prototype of one of the six apps recommended above
* Draw arrows between each screen and identify the HTTP method and data (if any) associated with the request
* Take a picture of your drawings and place the image in the [images](images) folder
* List of all the requests you've identified, including HTTP method and data sent, in the [answers](answers.md) markdown file


### Starter code

There is no starter code for this Lab.


### Solution Code
Solution code can be found in [./solution-code](solution-code).

#### Deliverables

Submit a pull request with:

* A picture of your prototype request diagram, with labeled methods and data, in the [images](images) folder
* A list of requests made in the [answers](answers.md) file
  * Here's an example of what your answers.md file should look like for each request:
    1. Login => Home
      * Method: POST
      * Data: username; password


### Bonus Activities

+ Do all of the requirements again for an email app (like Gmail)

# Additional Resources

+ [REST/HTTP](http://www.restapitutorial.com/lessons/httpmethods.html)
