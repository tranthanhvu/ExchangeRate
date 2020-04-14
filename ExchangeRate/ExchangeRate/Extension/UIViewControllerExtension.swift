//
//  UIViewControllerExtension.swift
//  ExchangeRate
//
//  Created by Tran Thanh Vu on 4/13/20.
//  Copyright © 2020 Socspy. All rights reserved.
//

import RxSwift
import UIKit

extension UIViewController: UIViewControllerType {
    var viewType: UIViewType {
        return self.view
    }
    
    func addFillerChildViewController(_ childViewController: UIViewControllerType, toView: UIViewType? = nil) {
        addChildViewController(childViewController)
        var parentView: UIViewType = childViewController.viewType
        if let toView = toView {
            parentView = toView
        }
        parentView.addFillerSubview(childViewController.viewType)
        childViewController.didMove(toParentViewController: self)
    }
    
    func addChildViewController(_ childViewController: UIViewControllerType) {
        guard let childViewController = childViewController as? UIViewController else {
            return
        }
        addChildViewController(childViewController)
    }
    
    func didMove(toParentViewController parent: UIViewControllerType?) {
        didMove(toParentViewController: parent as? UIViewController)
    }
    
    func removeFromParentViewController() {
        
    }
}

//extension Reactive where Base: UIViewController {
//    var viewDidLoad: Observable<Void> {
//        return self.sentMessage(#selector(Base.viewDidLoad)).map { _ in Void() }
//    }
//}
