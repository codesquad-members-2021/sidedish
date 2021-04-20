//
//  SidedishItem.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation

struct SidedishItem: Codable {
    var detailHash: String
    var image: String
    var alt: String
    var deliveryType: [String]?
    var title: String
    var description: String
    var nPrice: String?
    var sPrice: String?
    var badge: [String]?
    
    enum CodingKeys: String, CodingKey {
        case detailHash = "detail_hash"
        case image
        case alt
        case deliveryType = "delivery_type"
        case title
        case description
        case nPrice = "n_price"
        case sPrice = "s_price"
        case badge
    }
}
