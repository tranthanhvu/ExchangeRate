//
//  ExchangeViewModel.swift
//  ExchangeRate
//
//  Created by Tran Thanh Vu on 4/15/20.
//  Copyright © 2020 Socspy. All rights reserved.
//

import RxCocoa
import RxSwift
import CoreData

protocol ExchangeViewModelDeledate {
    
}

protocol ExchangeViewModelType: class {
    var rx_title: Driver<String> { get }
    var rx_calculateExchange: Observable<Void> { get }
    var rx_updateRateExchange: Observable<Void> { get }
    var rx_reload: Observable<Void> { get }
    
    func bindViewDidLoad(_ observable: Observable<Void>)
}

class ExchangeViewModel: NSObject, ExchangeViewModelType {
    var rx_title: Driver<String> = .just("Exchange")
    var rx_calculateExchange: Observable<Void> = .never()
    var rx_updateRateExchange: Observable<Void> = .never()
    var rx_reload: Observable<Void> = .never()
    
//    private let coreDataStack: CoreDataStack
////    private var data: NSFetchedResultsController<CurrencyModel>!
//    
//    init(coreDataStack: CoreDataStack) {
//        self.coreDataStack = coreDataStack
//        
//        super.init()
//    }
    
    func createFetchController() {
//        let fetchRequest = NSFetchRequest<CurrencyModel>(
    }
    
    func bindViewDidLoad(_ observable: Observable<Void>) {
        rx_updateRateExchange = observable
    }
    
    func dataCount() -> Int {
        return 0
    }
    
    func getObject(_ indexPath: IndexPath) -> CurrencyModel? {
        return nil
    }
}

extension ExchangeViewModel: NSFetchedResultsControllerDelegate {
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        guard let indexPath = indexPath ?? (newIndexPath ?? nil) else { return }
    }
}
