//
//  CurrencyDataProvider.swift
//  ExchangeRate
//
//  Created by Tran Thanh Vu on 4/13/20.
//  Copyright © 2020 Socspy. All rights reserved.
//

import Foundation
import RxSwift

protocol CurrencyDataProviderType {
    func fetchData(endpoint: String) -> Observable<[CurrencyModel]>
}

//final class CurrencyDataProvider: CurrencyDataProviderType {
//    
////    func fetchData(endpoint: String) -> Observable<[CurrencyModel]> {
////        guard let endPointUrl = URL(string: endpoint) else {
////            fatalError("endpoint is not an URL object")
////        }
////
////        let req = URLRequest(url: endPointUrl)
////    }
//}
