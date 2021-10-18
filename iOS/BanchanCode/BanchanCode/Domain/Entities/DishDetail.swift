//
//  DishDetail.swift
//  BanchanCode
//
//  Created by Song on 2021/04/28.
//

import Foundation

struct DishDetail {
    let basicInformation: BasicInformation
    let thumbImages: [String]?
    let detailImages: [String]?
    
    init(basicInformation: BasicInformation,
         thumbImages: [String]?,
         detailImages: [String]?) {
        self.basicInformation = basicInformation
        self.thumbImages = thumbImages
        self.detailImages = detailImages
    }
}

struct BasicInformation {
    let id: Int
    let name: String?
    let description: String?
    let prices: [Int]?
    let badges: [String]?
    let stock: Int?
    let point: Int?
    let deliveryInfo: String?
    
    init(id: Int,
         name: String?,
         description: String?,
         prices: [Int]?,
         badges: [String]?,
         stock: Int?,
         point: Int?,
         deliveryInfo: String?) {
        self.id = id
        self.name = name
        self.description = description
        self.prices = prices
        self.badges = badges
        self.stock = stock
        self.point = point
        self.deliveryInfo = deliveryInfo
    }
    
    init(id: Int) {
        self.init(id: id, name: nil, description: nil, prices: nil, badges: nil, stock: nil, point: nil, deliveryInfo: nil)
    }
}
