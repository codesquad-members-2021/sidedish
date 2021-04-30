//
//  sideDishAmountViewModel.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/23.
//

import Foundation
import Combine

final class SideDishAmountViewModel {
        
    private(set) var amountState: AmountState
    private var cancellable = Set<AnyCancellable>()
    private var cancell: AnyCancellable?
    
    init() {
        amountState = AmountState()
    }
    
    func bind(sPrice: String) -> AnyPublisher<(String, String) , Never> {
        return amountState.$amount
            .map {
                let price = sPrice.formatStringNumber()
                let total = (Int(price) ?? 0) * $0
                return (total.decimalWon(), String($0))
            }
            .eraseToAnyPublisher()
    }
}

