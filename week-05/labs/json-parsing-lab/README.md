---
title: "JSON Parsing Lab"
type: Lab
duration: "1:25"
creator:
    name: Wellington Moreno
    city: Santa Monica
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) JSON Parsing Lab

## Introduction

#### What we are doing

In this lab, we will practice reading and interpreting JSON Data.

> ***Note:*** _This lab should be done collaboratively with a partner._


#### Why we are doing it

JSON is the main language of the public internet. It is a protocol used to transmit information from computer to computer, in a human-readable form. Translating that into information that your Apps can understand is the key to building rich, communicative, and useful apps.


## Exercise


### Requirements


**Exercise 1**

+ Store the following JSON into a variable.

```json
{
    "name" : "Santa Monica Public Library",
    "city" : "Santa Monica",
    "state" : "California",
    "zipCode" : 90401
}

```
+ Create a data structure called `Place` to represent this JSON.

+ Use `JSONSerialization` to parse the json into the data structure you created.

+ Print the resulting object

**Exercise 2**

+ Store the following JSON into a variable

```json
["Istanbul", "Laguna Beach", "New York City", "Washington DC", "San Francisco", "Miami"]
```

+ Use `JSONSerialization` to parse this JSON into an `Array`.

+ Print each element in that Array


**Exercise 3**

+ Store the following JSON in a variable

```json
{
    "name" : "Kavin",
    "favorite_shows" : ["Breaking Bad", "Lost", "Dollhouse", "Black Mirror", "Fringe"],
    "address" : {
        "street" : "737 Southern Blvd",
        "city" : "Bronx",
        "state" : "New York",
        "zip_code" : 10455
    },
    "is_married" : false,
    "number_of_kids" : 1
}
```

+ Create a data structure to represent this JSON structure.

+ Parse the following JSON into the data structure you created.

+ Print the resulting object

**Exercise 4**

Use the [Google Books API](https://developers.google.com/books/) to write a function that takes an *ISBN* and does the following:

+ Prints the name of the book
+ Prints the author of the book
+ Prints a short description of the book
+ Obtains the cover image for the book and displays it (still within playgrounds).

> Example url: https://www.googleapis.com/books/v1/volumes?q=isbn:9788576653721

**Exercise 5**

+ Using the same [Google Geocode API](https://developers.google.com/maps/documentation/geocoding/start) used in the [ios-networking-lab](https://git.generalassemb.ly/iosi/sf-01-homework-and-labs/tree/master/week-04/labs/ios-networking-lab), write a function that takes an address and returns the latitude and longitude.

> Example query: https://maps.googleapis.com/maps/api/geocode/json?address=Oxford%20University,%20uk&sensor=false


---

### Starter code

There is no starter code for this lab.

### Solution Code

Solution code can be found in [solution-code](solution-code).


## Deliverables

Your deliverable will be a Swift Playground containing your solutions.


### Bonus Activities

+ Take the `Place` class you created for Exercise 1, and write a function `(Place) -> (String)` that turns it into a JSON-Compatible String.

For example:

```js
let place = Place(name: "Promenade", city: "Santa Monica", state: "CA", zipCode: 90401)
place.asJson() ->  { "name" : "Santa Monica Public Library", "city" : "Santa Monica", "state" : "California", "zipCode" : 90401 }
```

> **Note** The output is a String.

 + Check that the function is correct by parsing the result back into an a new instance of `Place` and checking if they are equal.


# Additional Resources

+ [Swift Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1)
+ [JSONSerialization Reference](https://developer.apple.com/reference/foundation/jsonserialization)
