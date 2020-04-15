//
//  BaseViewController.swift
//  ExchangeRate
//
//  Created by Tran Thanh Vu on 4/13/20.
//  Copyright © 2020 Socspy. All rights reserved.
//

import UIKit
import RxSwift

class BaseViewController<T>: UIViewController {
    
    let disposeBag = DisposeBag()

    var viewModel: T? {
        didSet {
            if let viewModel = viewModel {
                configure(viewModel: viewModel)
            }
        }
    }
    
    func configure(viewModel: T) { }
}
