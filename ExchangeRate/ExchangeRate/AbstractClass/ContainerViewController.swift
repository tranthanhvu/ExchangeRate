//
//  ContainerViewController.swift
//  ExchangeRate
//
//  Created by Tran Thanh Vu on 4/13/20.
//  Copyright © 2020 Socspy. All rights reserved.
//

import UIKit

class ContainerViewController {

    let parentViewController: UIViewControllerType
    let containerView: UIViewType
    
    init(parentViewController: UIViewControllerType, containerView: UIViewType) {
        self.parentViewController = parentViewController
        self.containerView = containerView
    }
    
    func addChildController(_ childController: UIViewControllerType) {
        parentViewController.addFillerChildViewController(childController, toView: containerView)
    }
    
}
