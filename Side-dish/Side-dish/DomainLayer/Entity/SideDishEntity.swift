//
//  SideDishEntity.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/24.
//

import Foundation

struct SideDishEntity {
    let detailHash: String
    let image: String
    let alt: String
    let deliveryType: [DeliveryType]
    let title: String
    let description: String
    let nPrice: String
    let sPrice: String
    let badge: [Badge]
}
