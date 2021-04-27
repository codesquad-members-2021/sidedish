//
//  sideDishAmountViewModel.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/23.
//

import Foundation
import Combine

class SideDishAmountViewModel {
        
    private(set) var amountState: AmountState
    private var cancellable = Set<AnyCancellable>()
    private var cancell: AnyCancellable?
    
    init() {
        amountState = AmountState()
    }
    
    func bind(sPrice: String, handler: @escaping (String, String) -> ()) {
        cancell = amountState.$amount.sink { (amount) in
            let price = sPrice.formatStringNumber()
            let total = (Int(price) ?? 0) * amount
            handler(total.DecimalWon(), String(amount))
        }
    }

}

