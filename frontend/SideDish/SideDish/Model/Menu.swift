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
    
    func configure(cell: MenuCell) {
        cell.titleLabel.text = self.title
        cell.bodyLabel.text = self.description
        cell.currentPriceLabel.text = self.s_price
    }
}



extension Menu: Hashable, Equatable {
    static func == (lhs: Menu, rhs: Menu) -> Bool {
        return lhs.detail_hash == rhs.detail_hash || lhs.image == rhs.image ||
            lhs.alt == rhs.alt || lhs.delivery_type == rhs.delivery_type ||
            lhs.title == rhs.title || lhs.description == rhs.description ||
            lhs.n_price == rhs.n_price || lhs.s_price == rhs.s_price || lhs.badge == rhs.badge
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(detail_hash)
        hasher.combine(image)
        hasher.combine(alt)
        hasher.combine(delivery_type)
        hasher.combine(title)
        hasher.combine(description)
        hasher.combine(n_price)
        hasher.combine(s_price)
        hasher.combine(badge)
    }
}
