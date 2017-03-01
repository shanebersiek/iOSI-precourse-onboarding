---
title: Autolayout
type: Homework
duration: "2:00"
creator:
    name: Rudd Taylor
    city: NYC
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Autolayout

> ***Note:*** _This homework should be done independently._

## Exercise

By the end of this homework, you should be able to create a custom view given a graphic specification, then align that view within a more complex screen using auto layout in Interface Builder.

#### Requirements

- Create a custom square view with a border width, border color, corner radius, a background image and multiple subviews
 - The view should be 50px by 50px
 - The view should have a gray borderColor
 - The view should have a cornerRadius of 2
 - The view should have a background image of your choice. This should be a separate UIImageView that is flush with its superview. The image contents should not extend beyond the corner radius.
 - The view should have a small 'like' label in the top right (5 px margins). It should contain the text '👍'.
- Create a series of these custom views aligned in a 2 by 2 pattern on the screen (one button on each corner, each with a margin of 5px). The buttons should stay in their corners on device rotation.

**Bonus:**

- Animate the custom views if they're pressed using a combination of UIView.animateWithDuration and UITapGestureRecognizer. The animation is up to you, get creative! (Examples might include: 'Shaking' the view, changing background color, fading in and out, etc)

#### Starter code

Here is the [starter code for this assignment](https://github.com/generalassembly-studio/iOSI-course-materials/tree/master/curriculum/04-schedule-and-supplies/week-04/baseline-materials/autolayouts-homework/starter-code). This consists of a blank storyboard, a 'like' with instructions.

#### Deliverable

Fork this repository using Github, then clone your fork to your computer. Navigate to this folder. 
- Open the project in this folder, modify it as instructed above.
- Commit your changes to your fork and create a pull request. This is your homework submission.

#### Assessment

The contained app should meet as many of the above specifications as possible. Still can't figure it out? Talk with your instructor and review the solution code.