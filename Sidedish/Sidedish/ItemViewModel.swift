//
//  ItemViewModel.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation

class ItemViewModel {
    @Published var items: [SidedishItem]
    var sidedishProcessing: SidedishProcessing
    
    init() {
        self.items = [SidedishItem]()
        self.sidedishProcessing = SidedishProcessing()
    }
    
    func fetchItems() {
        self.sidedishProcessing.getItems { (items) in
            self.items = items
        }
    }
}
