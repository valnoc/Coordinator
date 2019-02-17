import UIKit

open class BaseAppCoordinator: BaseCoordinator<UIWindow> {
    
    public init(vcFactory: ViewControllerFactory,
                coordinatorFactory: CoordinatorFactory) {
        super.init(vcFactory: vcFactory,
                   coordinatorFactory: coordinatorFactory,
                   navigator: UIWindow(frame: UIScreen.main.bounds))
        
        navigator.makeKeyAndVisible()
    }
}
