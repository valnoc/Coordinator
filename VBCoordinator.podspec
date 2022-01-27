Pod::Spec.new do |s|
    s.name             = "VBCoordinator"
    s.version          = "1.3.1"
    s.summary          = "Implementation of Mediator pattern to control screens flow."
    s.description      = <<-DESC
    Implementation of Mediator pattern to control screens flow.
    
    Check these articles https://medium.com/blacklane-engineering/coordinators-essential-tutorial-part-i-376c836e9ba7 and https://medium.com/blacklane-engineering/coordinators-essential-tutorial-part-ii-b5ab3eb4a74 to get the idea of what coordinator is.
    
    In short, a coordinator is a mediator between several screens or between other coordinators (screens flow). It opens ViewControllers and other coordinators. All screens are developed to be totally independent from each other. A ViewController is never opened from another one - only coordinator should do this. 
    
    You create a hierarchy of coordinators starting with the AppCoordinator. He "knows" which flow should be first depending on situation.
                         DESC
    s.homepage         = "https://github.com/valnoc/Coordinator"
  
    s.license          = 'MIT'
    s.author           = { "Valeriy Bezuglyy" => "valnocorner@gmail.com" }
    s.source           = { :git => "https://github.com/valnoc/Coordinator.git", :tag => "#{s.version}" }
  
    s.swift_version = '5.2'
    s.platform     = :ios, '9.0'
    s.requires_arc = true
  
    s.source_files = 'Sources/**/*'
  
  end
