//
//  Item.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/19.
//

import Foundation

struct Item: Codable {
    let detailHash: String
    let image: String
    let alt: String
    let deliveryType: [DeliveryType]
    let title: String
    let description: String
    let nPrice: String?
    let sPrice: String
    let badge: [Badge]?
    
    enum CodingKeys: String, CodingKey {
        case detailHash = "detail_hash"
        case image, alt
        case deliveryType = "delivery_type"
        case title, description
        case nPrice = "n_price"
        case sPrice = "s_price"
        case badge
    }
}

enum DeliveryType: String, Codable {
    case dawnDelivery = "새벽배송"
    case nationDelivery = "전국택배"
}

enum Badge: String, Codable {
    case eventPrice = "이벤트특가"
    case launchingPrice = "론칭특가"
    case bestPrice = "베스트"
}
