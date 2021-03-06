---
title: Git and GitHub Lab
type: Lab
duration: "1.25"
creator:
    name: Jay Nappy
    city: NYC
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Git and GitHub Lab

## Introduction

> ***Note:*** _This can be a pair programming activity or done independently._

Let's apply what we've learned from class to share and update each other's code.  With a partner, you're going going to alternate between who 'drives' and who 'navigates' while following the requirements under "Exercise" below. The goal will be to create a project, have a partner fork, clone, and edit the project, submit the changes as a pull request, and then have the changes merged.  

Be sure to look at the previous lesson for notes and helpful hints.

## Exercise

Partners will be referred to as partner1 and partner2.

### Part 1

**With partner1 driving:**

- create a folder called `git-and-github-practice` (not inside any existing git repo)
- within that folder create a new Xcode Project
- in that project, add a new Swift file named `Car`
- initiate a git repository, commit your changes, and push to GitHub


**With partner2 driving, from their computer:**

- get your partner's link to the GitHub repository and fork and clone it
- import the project
    - make some changes to the Car file
    - add a new file, `Garage`
- commit your changes and submit a pull request back to partner1


**With partner1 driving:**

- merge the pull request from the GitHub interface


### Part 2

**With partner2 driving**:


- create a folder called `git-and-github-practice-two`
- within that folder create a new Xcode Project
- copy and paste the code from the merged pull request files (of your partners `git-and-github-practice` project) from each of the appropriate files to your own
- initiate a git repository, commit your changes, and push to GitHub
> Note: Partner2 should now have the solution from Part 1 locally

**With partner1 driving:**

- get your partner's link to the new GitHub repository - fork and clone it
- open the project and make AppDelegate print "Hello World" in the didLaunchWithOptions() method.
- commit your changes and submit a pull request back to partner2


**With partner2 driving:**

- merge the pull request from the GitHub interface

**Bonus**:

- use the [syncing a fork](https://help.github.com/articles/syncing-a-fork/) documentation to update partner2's local version of `git-and-github-practice` without copying and pasting any code
- push the updated local copy to GitHub


#### Deliverable

Nothing to turn into the instructors, but you should have two separate GitHub repositories that have merged pull requests.

## Additional Resources

- [Git documentation](https://git-scm.com/documentation)
- [Forking on github](https://help.github.com/articles/fork-a-repo/)
- [Syncing a fork](https://help.github.com/articles/syncing-a-fork/)
- [How to use Source Control with Xcode and iOS 7](https://www.raywenderlich.com/51351/how-to-use-git-source-control-with-xcode-in-ios-7)


> Note: This tutorial is written in Objective-C but don't worry, you'll still be able to understand! And it's good practice to be able to read through Objective-C
