//
//  ExchangeCoordinator.swift
//  ExchangeRate
//
//  Created by Tran Thanh Vu on 4/15/20.
//  Copyright © 2020 Socspy. All rights reserved.
//

import UIKit

protocol ExchangeCoordinatorDelegate: class {
    func addCurrencyDidSelected()
}


final class ExchangeCoordinator: Coordinator {
    
    private var childCoordinators = [Coordinator]()
    
    private weak var exchangeViewController: ExchangeViewController?
    private weak var navigationController: UINavigationControllerType?
    
    init(navigationController: UINavigationControllerType) {
        self.navigationController = navigationController
    }
    
    func start() {
        guard let navigationController = navigationController else { return }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let name = String(describing: ExchangeViewController.self)
        exchangeViewController = storyboard.instantiateViewController(identifier: name)
        exchangeViewController!.viewModel = ExchangeViewModel()
        
        navigationController.pushViewController(exchangeViewController!, animated: true)
    }
}

extension ExchangeCoordinator: ExchangeCoordinatorDelegate {
    func addCurrencyDidSelected() {
        
    }
}
