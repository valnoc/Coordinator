//
//  Coordinator.swift
//  VocabularyApp
//
//  Created by Valeriy Bezuglyy on 17/02/2019.
//  Copyright © 2019 Valeriy Bezuglyy. All rights reserved.
//

import UIKit

open class BaseCoordinator<NavigatorType>: Coordinator, CoordinatorWithStorage {
    public var vcFactory: ViewControllerFactory
    public var coordinatorFactory: CoordinatorFactory
    public var navigator: NavigatorType
    
    public var storage: Storage
    
    public init(vcFactory: ViewControllerFactory,
                coordinatorFactory: CoordinatorFactory,
                navigator: NavigatorType) {
        self.vcFactory = vcFactory
        self.coordinatorFactory = coordinatorFactory
        self.navigator = navigator
        
        storage = Storage()
    }
}

