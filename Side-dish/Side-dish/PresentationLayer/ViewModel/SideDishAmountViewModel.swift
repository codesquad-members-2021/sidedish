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
            let price = self.match(text: sPrice)
            let total = (Int(price) ?? 0) * amount
            handler(self.DecimalWon(value: total), String(amount))
        }
    }

    private func match(text : String) -> String {
        guard let regex = try? NSRegularExpression(pattern: "[0-9]+", options: .caseInsensitive) else { return "" }
        let result = regex.matches(in: text, range: _NSRange(location: 0, length: text.count))
        return result.map {
            String(text[Range($0.range, in: text)!])
        }.joined()
    }
    
    private func DecimalWon(value: Int) -> String{
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let result = numberFormatter.string(from: NSNumber(value: value))! + "원"
        return result
    }
}

