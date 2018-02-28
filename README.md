# KMPopUp

Show Your Message in Popup Message With Duration and Image , Install this pod , you never have

![screens1](http://spreskill.com/img/1.gif) ![screens2](http://spreskill.com/img/2.gif) ![screens3](http://spreskill.com/img/3.gif)



[![CI Status](http://img.shields.io/travis/Kirollos Mage/KMPopUp.svg?style=flat)](https://travis-ci.org/Kirollos Mage/KMPopUp)
[![Version](https://img.shields.io/cocoapods/v/KMPopUp.svg?style=flat)](http://cocoapods.org/pods/KMPopUp)
[![License](https://img.shields.io/cocoapods/l/KMPopUp.svg?style=flat)](http://cocoapods.org/pods/KMPopUp)
[![Platform](https://img.shields.io/cocoapods/p/KMPopUp.svg?style=flat)](http://cocoapods.org/pods/KMPopUp)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

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
KMPoUp.ShowMessageWithDuration(controller: self, message: "YOUR MESSAGE", image: YOUR IMAGE, duration: 2.0)
// message hide on tab
KMPoUp.ShowMessage(controller: self, message: "YOUR MESSAGE", image: YOUR IMAGE ))
```

## Author

Kirollos Maged, E-mail : kerolosmagid@gmail.com

## License

KMPopUp is available under the MIT license. See the LICENSE file for more info.
