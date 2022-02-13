# Coordinator
![License](https://img.shields.io/github/license/valnoc/Coordinator)

![SPM compatible](https://img.shields.io/badge/SPM-compatible-green.svg?style=flat) ![SPM version](https://img.shields.io/github/v/tag/valnoc/Coordinator?sort=semver)

[![Cocoapods release](https://img.shields.io/cocoapods/v/VBCoordinator.svg)]() [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Implementation of Mediator pattern to control screens flow.

## Installation
Requires Swift 5

#### SPM


#### Carthage
Add this line into your Cartfile and run `carthage update`
```ruby
github "valnoc/Coordinator" ~> 1.0
```
#### Cocoapods
Add this line into your Podfile under a test target and run `pod update`
```ruby
pod 'VBCoordinator', '~> 1.0'
```

## Usage
Check these articles ([part1](https://medium.com/blacklane-engineering/coordinators-essential-tutorial-part-i-376c836e9ba7), [part2](https://medium.com/blacklane-engineering/coordinators-essential-tutorial-part-ii-b5ab3eb4a74)) to get the idea of what coordinator is.

In short, a coordinator is a mediator between several screens or between other coordinators (screens flow). It opens ViewControllers and other coordinators. All screens are developed to be totally independent from each other. A ViewController is never opened from another one - only coordinator should do this. 

You create a hierarchy of coordinators starting with the AppCoordinator. He "knows" which flow should be first depending on situation.

## License
Coordinator is available under MIT License.
