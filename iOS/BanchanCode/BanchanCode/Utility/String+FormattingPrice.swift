//
//  String+FormattingPrice.swift
//  BanchanCode
//
//  Created by Song on 2021/04/29.
//

import Foundation

extension String {
    func format(price: Int) -> String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 0
        let number = NSNumber(value: price)
        guard let formattedPrice = formatter.string(from: number) else { return nil }
        return "\(formattedPrice)원"
    }
}
