import UIKit

open class BaseAppCoordinator<TCoordinatorFactory>: BaseCoordinator<Void, TCoordinatorFactory, UIWindow> {
    
    public init(coordinatorFactory: TCoordinatorFactory) {
        super.init(vcFactory: (),
                   coordinatorFactory: coordinatorFactory,
                   router: UIWindow(frame: UIScreen.main.bounds))
        router.makeKeyAndVisible()
    }
}
