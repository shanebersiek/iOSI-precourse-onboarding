---
title: Platform integration
type: Homework
duration: "2:00"
creator:
    name: Rudd Taylor
    city: NYC
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Platform integration

> ***Note:*** _This homework should be done independently._

## Exercise

By the end of this homework, you should be able to explore the documentation for a deeper platform integration (in this case, 3D Touch) and implement it on top of an existing app.

#### Requirements

- Given a simple existing image viewer app and links to 3D touch documentation, add a 3D touch 'preview' when 3D touching on an image
- Add a 3D touch 'view first image' app shortcut action that views the first available image in the app

**Bonus:**

- Add an 'add image' app shortcut which launches the camera and, when a picture is taken, adds that image to a list

#### Starter code

Here is the [starter code for this assignment](/starter-code). This consists of an application as described above. Your task is to add 3D Touch functionality to the app.

Here is the [documentation](https://developer.apple.com/ios/3d-touch/) for 3D Touch. Remember that your app will need TWO integration points in AppDelegate: One in application:didFinishLaunchingWithOptions and one in application:performActionForShortcutItem.

#### Deliverable

Fork this repository using Github, then clone your fork to your computer. Navigate to this folder. 
- Open the project in this folder, modify it as instructed above.
- Commit your changes to your fork and create a pull request. This is your homework submission.

#### Assessment

Your edited project should meet all of the specifications described, and [will be evaluated by the following rubric](/rubric.md). Still can't figure it out? Talk with your instructor and review the solution code (once posted).

> [Solution code](/solution-code)
