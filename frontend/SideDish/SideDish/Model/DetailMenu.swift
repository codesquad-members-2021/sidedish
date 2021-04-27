//
//  DetailMenu.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/27.
//

import Foundation

class DetailMenu: Decodable {
    
    private var topImage: String
    private var thumbImages: [String]
    private var title: String
    private var productDescription: String
    private var point: String
    private var deliveryInfo: String
    private var deliveryFee: String
    private var prices: [String]
    private var badges: [String]
    private var detailSection: [String]
    
    init(topImage: String, thumbImages: [String], title: String, productDescription: String, point: String, deliveryInfo: String, deliveryFee: String, prices: [String], badges: [String], detailSection: [String]) {
        self.topImage = topImage
        self.thumbImages = thumbImages
        self.title = title
        self.productDescription = productDescription
        self.point = point
        self.deliveryInfo = deliveryInfo
        self.deliveryFee = deliveryFee
        self.prices = prices
        self.badges = badges
        self.detailSection = detailSection
    }
}
