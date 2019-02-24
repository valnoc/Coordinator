import UIKit

open class BaseCoordinator<RouterType>: Coordinator, CoordinatorWithStorage {
    public var vcFactory: ViewControllerFactory
    public var coordinatorFactory: CoordinatorFactory
    public var router: RouterType
    
    public var storage: Storage
    
    public init(vcFactory: ViewControllerFactory,
                coordinatorFactory: CoordinatorFactory,
                router: RouterType) {
        self.vcFactory = vcFactory
        self.coordinatorFactory = coordinatorFactory
        self.router = router
        
        storage = Storage()
    }
}

