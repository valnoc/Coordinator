import UIKit

open class BaseCoordinator<TVCFactory, TCoordinatorFactory, TRouter>: Coordinator, CoordinatorWithStorage {
    public var vcFactory: TVCFactory
    public var coordinatorFactory: TCoordinatorFactory
    public var router: TRouter
    
    public var storage: Storage
    
    /// - Parameters:
    ///     - vcFactory: a factory to create screens
    ///     - coordinatorFactory: a factory to create child coordinators
    ///     - router: a router for changing screens. Usually, UINavigationController, UITabBarController, Window or any other container
    public init(vcFactory: TVCFactory,
                coordinatorFactory: TCoordinatorFactory,
                router: TRouter) {
        self.vcFactory = vcFactory
        self.coordinatorFactory = coordinatorFactory
        self.router = router
        
        storage = Storage()
    }
}

