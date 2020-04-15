//
//  ExchangeTableViewCell.swift
//  ExchangeRate
//
//  Created by Tran Thanh Vu on 4/16/20.
//  Copyright © 2020 Socspy. All rights reserved.
//

import UIKit
import RxSwift

class ExchangeTableViewCell: UITableViewCell {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var rate: UILabel!
    @IBOutlet weak var exchange: UILabel!

    func bind(currency: CurrencyModel, currentCurrency: CurrencyModel, value: Int) {
        name.text = currency.name
        rate.text = String(currency.rate)
    }
}
