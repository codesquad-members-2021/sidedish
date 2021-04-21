//
//  Menu.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/20.
//

import Foundation

class Menu: Codable {

    private let detail_hash: String
    private let image: String
    private let alt: String
    private let delivery_type: [String]
    private let title: String
    private let description: String
    private let n_price: String?
    private let s_price: String
    private let badge: [String]?

    init(detail_hash: String, image: String, alt: String, delivery_type: [String], title: String, description: String, n_price: String?, s_price: String, badge: [String]?) {
        self.detail_hash = detail_hash
        self.image = image
        self.alt = alt
        self.delivery_type = delivery_type
        self.title = title
        self.description = description
        self.n_price = n_price
        self.s_price = s_price
        self.badge = badge
    }
}

struct getMenu: Codable {
    let category_id: String
    let name: String
    let items: [Menu]
}
