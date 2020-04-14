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

    private(set) var viewModel: T
    
    init(viewModel: T) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
        
        configure(viewModel: viewModel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(viewModel: T) { }
}
