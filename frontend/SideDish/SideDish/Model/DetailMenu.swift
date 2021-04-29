//
//  DetailMenu.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/27.
//

import Foundation

class DetailMenu: Decodable {
    
    private var detailHash: String
    private var topImage: String
    private(set) var thumbImages: [String]
    private(set) var title: String
    private(set) var productDescription: String
    private(set) var point: Int
    private(set) var deliveryInfo: String
    private(set) var deliveryFee: String
    private(set) var stock: Int
    private(set) var prices: [String]
    private(set) var badge: [String?]
    private(set) var detailSection: [String]
    
    
    init(detailHash: String, topImage: String, thumbImages: [String], title: String, productDescription: String, point: Int, deliveryInfo: String, deliveryFee: String, stock: Int, prices: [String], badges: [String?], detailSection: [String]) {
        self.detailHash = detailHash
        self.topImage = topImage
        self.thumbImages = thumbImages
        self.title = title
        self.productDescription = productDescription
        self.point = point
        self.deliveryInfo = deliveryInfo
        self.deliveryFee = deliveryFee
        self.stock = stock
        self.prices = prices
        self.badge = badges
        self.detailSection = detailSection
    }
}
