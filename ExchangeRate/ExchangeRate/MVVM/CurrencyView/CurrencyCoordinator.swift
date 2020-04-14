//
//  CurrencyCoordinator.swift
//  ExchangeRate
//
//  Created by Tran Thanh Vu on 4/13/20.
//  Copyright © 2020 Socspy. All rights reserved.
//

import Foundation

final class CurrencyCoordinator: Coordinator {
    
    private weak var containerViewController: ContainerViewController?
    
    init(containerViewController: ContainerViewController) {
        self.containerViewController = containerViewController
    }
    
    func start() {
        guard let containerViewController = containerViewController else { return }
        
        
    }
    
    
}
