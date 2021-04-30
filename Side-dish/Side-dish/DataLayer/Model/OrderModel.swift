//
//  OrderModel.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/30.
//

import Foundation

struct OrderModel: Encodable {
    let channel: String
    let username: String
    let text: String
    let iconemoji: String
    
    init(title: String, sPrice: String) {
        self.channel = "#sidedishalert"
        self.username = "team-4"
        self.text = "주문 내용 : \(title)(\(sPrice))"
        self.iconemoji = ":ghost:"
    }
}
