//
//  Menu.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/20.
//

import Foundation

class Menu: Codable {

    private var detail_hash: String
    private(set) var image: String
    private var alt: String
    private var delivery_type: [String]
    private(set) var title: String
    private(set) var description: String
    private(set) var n_price: String?
    private(set) var s_price: String
    private(set) var badge: [String]?
    
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
