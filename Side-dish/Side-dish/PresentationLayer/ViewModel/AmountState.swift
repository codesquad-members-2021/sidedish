//
//  amountState.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/23.
//

import Foundation
import Combine

class AmountState {
    
    @Published var amount: Int = 1
    
    func Increase() {
        amount += 1
    }
    
    func Decrease() {
        if amount < 1 {
            return
        }
        amount -= 1
    }
}
