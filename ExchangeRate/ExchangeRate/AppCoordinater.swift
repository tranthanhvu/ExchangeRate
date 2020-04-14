//
//  AppCoordinater.swift
//  ExchangeRate
//
//  Created by Tran Thanh Vu on 4/13/20.
//  Copyright © 2020 Socspy. All rights reserved.
//

import UIKit

final class AppCoordinater {
    private let navigationController: UINavigationController
    private let coreDataStack: CoreDataStack

    init(_ navigationController: UINavigationController, coreDataStack: CoreDataStack) {
        self.navigationController = navigationController
        self.coreDataStack = coreDataStack
    }
    
    public func start() {
        
    }
}

//extension AppCoordinater
