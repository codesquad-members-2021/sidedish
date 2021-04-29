//
//  DishDetail.swift
//  BanchanCode
//
//  Created by Song on 2021/04/28.
//

import Foundation

struct DishDetail {
    let id: Int
    let name: String?
    let description: String?
    let prices: [Int]?
    let badges: [String]?
    let stock: Int?
    let point: Int?
    let deliveryInfo: String?
    let thumbImages: [String]?
    let detailImages: [String]?
    
    init(id: Int,
         name: String?,
         description: String?,
         prices: [Int]?,
         badges: [String]?,
         stock: Int?,
         point: Int?,
         deliveryInfo: String?,
         thumbImages: [String]?,
         detailImages: [String]?) {
        self.id = id
        self.name = name
        self.description = description
        self.prices = prices
        self.badges = badges
        self.stock = stock
        self.point = point
        self.deliveryInfo = deliveryInfo
        self.thumbImages = thumbImages
        self.detailImages = detailImages
    }
    
    init(id: Int) {
        self.init(id: id,
                  name: nil,
                  description: nil,
                  prices: nil,
                  badges: nil,
                  stock: nil,
                  point: nil,
                  deliveryInfo: nil,
                  thumbImages: nil,
                  detailImages: nil)
    }
}
