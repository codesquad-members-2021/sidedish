//
//  Detail.swift
//  sidedishApp
//
//  Created by 김지선 on 2021/04/21.
//

import Foundation

struct Detail: Codable {
    private let item: DetailItem
    
    init() {
        let id = 0
        let detailImages = [""]
        let descriptionImages = [""]
        let name = ""
        let description = ""
        let normalPrice = 0
        let salePrice = 0
        let eventBadgeList = [EventBadge(name: "", colorHex: "")]
        let pointRate = 1
        let isPurchasable = false
        let deliveryInfo = ""
        let deliveryFee = ""
        self.item = DetailItem(id: id, detailImages: detailImages, descriptionImages: descriptionImages, name: name, description: description, normalPrice: normalPrice, salePrice: salePrice, eventBadgeList: eventBadgeList, pointRate: pointRate, isPurchasable: isPurchasable, deliveryInfo: deliveryInfo, deliveryFee: deliveryFee)
        
    }
}
