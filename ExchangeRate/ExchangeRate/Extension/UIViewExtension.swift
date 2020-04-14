//
//  UIViewExtension.swift
//  ExchangeRate
//
//  Created by Tran Thanh Vu on 4/13/20.
//  Copyright © 2020 Socspy. All rights reserved.
//

import UIKit

extension UIView: UIViewType {
    
    func addSubview(_ view: UIViewType) {
        guard let view = view as? UIView else {
            return
        }
        
        addSubview(view)
    }
    
    func addFillerSubview(_ subview: UIViewType) {
        subview.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(subview)
        
        let views = ["subview": subview]
        let verticalConstraint = NSLayoutConstraint.constraints(withVisualFormat: "V:|[subview]|", options: [], metrics: nil, views: views)
        let horizontalConstraint = NSLayoutConstraint.constraints(withVisualFormat: "H:|[subview]|", options: [], metrics: nil, views: views)
        addConstraints(verticalConstraint + horizontalConstraint)
    }
}
