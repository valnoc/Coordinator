import UIKit

open class BaseAppCoordinator: BaseCoordinator<UIWindow> {
    
    public init(vcFactory: ViewControllerFactory,
                coordinatorFactory: CoordinatorFactory) {
        super.init(vcFactory: vcFactory,
                   coordinatorFactory: coordinatorFactory,
                   router: UIWindow(frame: UIScreen.main.bounds))
        
        router.makeKeyAndVisible()
    }
}
