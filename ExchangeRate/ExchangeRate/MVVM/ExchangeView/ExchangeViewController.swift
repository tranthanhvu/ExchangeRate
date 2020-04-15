//
//  ExchangeViewController.swift
//  ExchangeRate
//
//  Created by Tran Thanh Vu on 4/15/20.
//  Copyright © 2020 Socspy. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ExchangeViewController: BaseViewController<ExchangeViewModelType> {

    @IBOutlet private(set) weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func configure(viewModel: ExchangeViewModelType) {
//        viewModel.bindViewDidLoad()
        
        viewModel.rx_title
            .drive()
            .disposed(by: disposeBag)
    }
}
