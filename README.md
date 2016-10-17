# TumblrApp

## Tumblr

The purpose of this homework is to leverage animations and gestures to create custom navigation. We're going to use the techniques from this week to implement some interactions in Tumblr.

Time spent: `<~8>`

### Features

#### Required

- [X] Tapping on Home, Search, Account, or Trending should show the respective screen and highlight the tab bar button.
- [X] Compose button should modally present the compose screen.

#### Optional

- [ ] Compose screen is faded in while the buttons animate in.
- [ ] Login button should show animate the login form over the view controller.
- [ ] Discover bubble should bob up and down unless the SearchViewController is tapped.

#### The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. animation keyframes for delayed timings
2. 

### Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='https://github.com/toastedmarshmallow/TumblrApp/blob/master/tumblr.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />


## Notes

I tried doing the custom modal - was able to remove all the errors from the BaseTransition.swift file but couldn't find the referenced "prepareForSegue" method. Kept it as a default modal transition instead. Would have loved to do other optionals...

* Any libraries or borrowed content. :none
