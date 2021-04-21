//
//  DetailItem.swift
//  sidedishApp
//
//  Created by 김지선 on 2021/04/21.
//

import Foundation

struct DetailItem: Codable {
    private let id: Int
    private let detailImages: [String]
    private let descriptionImages: [String]
    private let name: String
    private let description: String
    private let normalPrice: Int
    private let salePrice: Int
//    private let eventBadgeList: [EventBadge]
    private let pointRate: Int
    private let isPurchasable: Bool
    private let deliveryInfo: String
    private let deliveryFee: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case detailImages
        case descriptionImages
        case name
        case description
        case normalPrice
        case salePrice
//        case eventBadgeList
        case pointRate
        case isPurchasable
        case deliveryInfo = "delivery_info"
        case deliveryFee = "delivery_fee"
    }
    
    init(id: Int, detailImages: [String], descriptionImages: [String], name: String, description: String, normalPrice: Int, salePrice: Int, pointRate: Int, isPurchasable: Bool, deliveryInfo: String, deliveryFee: String) {
        self.id = id
        self.detailImages = detailImages
        self.descriptionImages = descriptionImages
        self.name = name
        self.description = description
        self.normalPrice = normalPrice
        self.salePrice = salePrice
//        self.eventBadgeList = eventBadgeList
        self.pointRate = pointRate
        self.isPurchasable = isPurchasable
        self.deliveryInfo = deliveryInfo
        self.deliveryFee = deliveryFee
    }
    
//    convenience init() {
//        let id = 0
//        let detailImages = [""]
//        let descriptionImages = [""]
//        let name = ""
//        let description = ""
//        let normalPrice = 0
//        let salePrice = 0
////        let eventBadgeList = ["]
//        let pointRate = 1
//        let isPurchasable = false
//        let deliveryInfo = ""
//        let deliveryFee = ""
//        self.init(id: id, detailImages: detailImages, descriptionImages: descriptionImages, name: name, description: description, normalPrice: normalPrice, salePrice: salePrice, pointRate: pointRate, isPurchasable: isPurchasable, deliveryInfo: deliveryInfo, deliveryFee: deliveryFee)
//    }
}
