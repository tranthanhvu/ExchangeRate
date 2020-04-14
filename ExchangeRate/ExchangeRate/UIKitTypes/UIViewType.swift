//
//  UIViewType.swift
//  ExchangeRate
//
//  Created by Tran Thanh Vu on 4/13/20.
//  Copyright © 2020 Socspy. All rights reserved.
//

import Foundation

protocol UIViewType: class {
    var translatesAutoresizingMaskIntoConstraints: Bool { get set }
    
    func addSubview(_ view: UIViewType)
    func addFillerSubview(_ subview: UIViewType)
}
