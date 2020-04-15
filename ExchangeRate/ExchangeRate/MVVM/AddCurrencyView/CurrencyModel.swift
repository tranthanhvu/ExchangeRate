//
//  CurrencyModel.swift
//  ExchangeRate
//
//  Created by Tran Thanh Vu on 4/13/20.
//  Copyright © 2020 Socspy. All rights reserved.
//

import Foundation

struct CurrencyModel {
    private(set) var id: Int
    private(set) var name: String
    private(set) var rate: Float = 1
    private(set) var iconUrl: String?
    private(set) var unit: String?
    
    init(id: Int, name: String, rate: Float, iconUrl: String?, unit: String?) {
        self.id = id
        self.name = name
        self.rate = rate
        self.iconUrl = iconUrl
        self.unit = unit
    }
}
