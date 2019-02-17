# Coordinator
Implementation of Mediator pattern to control screens flow.

## Installation
Requires Swift 4.2

#### Carthage
Add this line into your Cartfile and run `carthage update`
```ruby
github "valnoc/Coordinator" ~> 1.0
```

## Usage
Check these articles ([part1](https://medium.com/blacklane-engineering/coordinators-essential-tutorial-part-i-376c836e9ba7), [part2](https://medium.com/blacklane-engineering/coordinators-essential-tutorial-part-ii-b5ab3eb4a74)) to get the idea of what coordinator is.

In short, a coordinator is a mediator between several screens or between other coordinators (screens flow). It opens ViewControllers and other coordinators. All screens are developed to be totally independent from each other. A ViewController is never opened from another one - only coordinator should do this. 

You create a hierarchy of coordinators starting with the AppCoordinator. He "knows" which flow should be first depending on situation.

## License
Coordinator is available under MIT License.
