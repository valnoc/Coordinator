import UIKit

open class BaseCoordinator<TVCFactory, TCoordinatorFactory, TRouter>: Coordinator, CoordinatorWithStorage {
    public var vcFactory: TVCFactory
    public var coordinatorFactory: TCoordinatorFactory
    public var router: TRouter
    
    public var storage: Storage
    
    public init(vcFactory: TVCFactory,
                coordinatorFactory: TCoordinatorFactory,
                router: TRouter) {
        self.vcFactory = vcFactory
        self.coordinatorFactory = coordinatorFactory
        self.router = router
        
        storage = Storage()
    }
}

