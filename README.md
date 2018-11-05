# KMPopUp

Show Your Message in Popup Message With Duration and Image , Install this pod , you never have

[![CI Status](http://img.shields.io/travis/KirollosSa/-KMPopUp.svg?style=flat)](https://travis-ci.org/KirollosSa/-KMPopUp)
[![Version](https://img.shields.io/cocoapods/v/KMPopUp.svg?style=flat)](http://cocoapods.org/pods/KMPopUp)
[![License](https://img.shields.io/cocoapods/l/KMPopUp.svg?style=flat)](http://cocoapods.org/pods/KMPopUp)
[![Platform](https://img.shields.io/cocoapods/p/KMPopUp.svg?style=flat)](http://cocoapods.org/pods/KMPopUp)

## Screens
![screens1](http://spreskill.com/img/1.gif)

![screens2](http://spreskill.com/img/2.gif)

![screens3](http://spreskill.com/img/3.gif)


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

# Requirements
### pod 'KMPopUp' , '~> 1.1.5' for swift 3.2
### pod 'KMPopUp' , '~> 1.2.0' for swift 4.2

## Installation

KMPopUp is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'KMPopUp'
```

## Setup
1 - Just Add new View Controller in Main.storyboard

2 - And set its 'Class' with "KMPopViewController" and also its 'Storyboard ID' with the same name of Class "KMPopViewController" ."

## Usage 
```ruby
import KMPopUp


// message hide with duration
KMPopUp.ShowMessageWithDuration(controller: self, message: "YOUR MESSAGE", image: "YOUR IMAGE", duration: 2.0,withAlpha: 0.8)

// message hide on tab
KMPopUp.ShowMessage(controller: self, message: "YOUR MESSAGE", image: "YOUR IMAGE" ,withAlpha: 0.8)

// message popup over screen
KMPopUp.ShowScreenPopUp(self, message: "YOUR MESSAGE", image: "YOUR IMAGE", withAlpha: 0.8)


```
// Optional parameters
// withAlpha is Optional parameter with default value = 0.8

## Author

Kirollos Maged, E-mail : kerolosmagid@gmail.com

#### License

KMPopUp is available under the MIT license. See the LICENSE file for more info.
