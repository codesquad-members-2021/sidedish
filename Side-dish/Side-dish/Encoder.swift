//
//  Encoder.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/30.
//

import Foundation

class Encoder {
    static func endcode(title: String, sPrice: String) -> Data {
        guard let data = try? JSONEncoder().encode(OrderModel(title: title, sPrice: sPrice)) else {
            return Data()
        }
        return data
    }
}
