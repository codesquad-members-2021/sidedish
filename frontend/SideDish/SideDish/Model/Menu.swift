//
//  Menu.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/20.
//

import Foundation

class Menu: Decodable {

    private(set) var detailHash: String
    private(set) var image: String
    private var alt: String
    private var deliveryType: [String]
    private(set) var title: String
    private(set) var description: String
    private(set) var nPrice: String?
    private(set) var sPrice: String
    private(set) var badge: [String]?
    
    init(detailHash: String, image: String, alt: String, deliveryType: [String], title: String, description: String, nPrice: String?, sPrice: String, badge: [String]?) {
        self.detailHash = detailHash
        self.image = image
        self.alt = alt
        self.deliveryType = deliveryType
        self.title = title
        self.description = description
        self.nPrice = nPrice
        self.sPrice = sPrice
        self.badge = badge
    }
}
