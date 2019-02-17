//
//  Coordinator.swift
//  VocabularyApp
//
//  Created by Valeriy Bezuglyy on 17/02/2019.
//  Copyright © 2019 Valeriy Bezuglyy. All rights reserved.
//

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
