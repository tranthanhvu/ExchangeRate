//
//  UIViewControllerType.swift
//  ExchangeRate
//
//  Created by Tran Thanh Vu on 4/13/20.
//  Copyright © 2020 Socspy. All rights reserved.
//

import UIKit

protocol UIViewControllerType: class {
    var viewType: UIViewType { get }
    
    func addFillerChildViewController(_ childViewController: UIViewControllerType, toView: UIViewType?)
    func addChildViewController(_ childViewController: UIViewControllerType)
    func didMove(toParentViewController parent: UIViewControllerType?)
    func removeFromParentViewController()
}

