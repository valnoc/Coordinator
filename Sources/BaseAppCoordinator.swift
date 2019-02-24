import UIKit

open class BaseAppCoordinator<TCoordinatorFactory>: BaseCoordinator<AppVCFactory, TCoordinatorFactory, UIWindow> {
    
    public init(coordinatorFactory: TCoordinatorFactory) {
        super.init(vcFactory: AppVCFactory(),
                   coordinatorFactory: coordinatorFactory,
                   router: UIWindow(frame: UIScreen.main.bounds))
        router.makeKeyAndVisible()
    }
}

public class AppVCFactory {
    init() { }
}
