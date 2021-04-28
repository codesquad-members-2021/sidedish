//
//  ItemData.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/22.
//

import Foundation

struct ItemData: Codable {
    let topImage: String
    let thumbImages: [String]
    let productDescription, point, deliveryInfo, deliveryFee: String
    let detailSection: [String]

    enum CodingKeys: String, CodingKey {
        case topImage = "top_image"
        case thumbImages = "thumb_images"
        case productDescription = "product_description"
        case point
        case deliveryInfo = "delivery_info"
        case deliveryFee = "delivery_fee"
        case detailSection = "detail_section"
    }
    
    init() {
        self.topImage = "test"
        self.thumbImages = ["test"]
        self.productDescription = "test"
        self.point = "test"
        self.deliveryInfo = "test"
        self.deliveryFee = "test"
        self.detailSection = []
    }
}
    
    

