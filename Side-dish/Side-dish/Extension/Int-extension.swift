//
//  Int-extension.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/27.
//

import Foundation

extension Int {
    func decimalWon() -> String{
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let result = numberFormatter.string(from: NSNumber(value: self))! + "원"
        return result
    }
}
