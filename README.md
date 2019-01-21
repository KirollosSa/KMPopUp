# KMPopUp

View your message in a simple and easy to use way 🎉

[![CI Status](http://img.shields.io/travis/KirollosSa/-KMPopUp.svg?style=flat)](https://travis-ci.org/KirollosSa/-KMPopUp)
[![Version](https://img.shields.io/cocoapods/v/KMPopUp.svg?style=flat)](http://cocoapods.org/pods/KMPopUp)
[![License](https://img.shields.io/cocoapods/l/KMPopUp.svg?style=flat)](http://cocoapods.org/pods/KMPopUp)
[![Platform](https://img.shields.io/cocoapods/p/KMPopUp.svg?style=flat)](http://cocoapods.org/pods/KMPopUp)

## Screens
[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/Pwvm9L0p2G0/0.jpg)](https://www.youtube.com/watch?v=Pwvm9L0p2G0)


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

# Requirements


## Installation

KMPopUp is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```swift
pod 'KMPopUp'

pod 'KMPopUp' , '~> 1.1.5' // for swift 3.2
pod 'KMPopUp' , '~> 1.2.0' // for swift 4.2
```

## Setup
1 - Just Add new View Controller in Main.storyboard

2 - And set its 'Class' with "KMPopViewController" and also its 'Storyboard ID' with the same name of Class "KMPopViewController" ."

## Usage 
```swift
import KMPopUp

// Optional parameters
// 'withAlpha' is optional parameter with default value = 0.8

// message hide with duration
KMPopUp.ShowMessageWithDuration(controller: self, message: "YOUR MESSAGE", image: "YOUR IMAGE", duration: 2.0,withAlpha: 0.8)

// message hide on tab
KMPopUp.ShowMessage(controller: self, message: "YOUR MESSAGE", image: "YOUR IMAGE" ,withAlpha: 0.8)

// message popup over screen
KMPopUp.ShowScreenPopUp(self, message: "YOUR MESSAGE", image: "YOUR IMAGE", withAlpha: 0.8)


```


## Author

Kirollos Maged, E-mail : kerolosmagid@gmail.com 😊

#### License

KMPopUp is available under the MIT license. See the LICENSE file for more info. 
