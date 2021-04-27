//
//  DetailItem.swift
//  Sidedish
//
//  Created by Issac on 2021/04/27.
//

import Foundation

struct DetailItem: Codable {
    var topImageURL: String
    var topImageData: Data?
    var thumbImagesURL: [String]
    var thumbImagesData: [Data?]?
    var productDescription: String
    var point: String
    var deliveryInfo: String
    var deleveryFee: String
    var prices: [String]
    var detailSectionURL: [String]
    var detailSectionData: [Data?]?
    
    enum CodingKeys: String, CodingKey {
        case topImageURL = "top_image"
        case topImageData
        case thumbImagesURL = "thumb_images"
        case thumbImagesData
        case productDescription = "product_description"
        case point
        case deliveryInfo = "delivery_info"
        case deleveryFee = "delivery_fee"
        case prices
        case detailSectionURL = "detail_section"
        case detailSectionData
    }
    
    init() {
        self.topImageURL = ""
        self.topImageData = nil
        self.thumbImagesURL = [String]()
        self.thumbImagesData = nil
        self.productDescription = ""
        self.point = ""
        self.deliveryInfo = ""
        self.deleveryFee = ""
        self.prices = [String]()
        self.detailSectionURL = [String]()
        self.detailSectionData = nil
    }

}
