//
//  BanchanDetailDTO+Mapping.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/27.
//

import Foundation

struct BanchanDetailDTO: Decodable {
    private let hash: Int
    private let data: BanchanDetailItemDTO

}

extension BanchanDetailDTO {
    struct BanchanDetailItemDTO: Decodable {
        private let topImage: String
        private let thumbImage: [String]
        private let detailSection: [String]
        private let productDescription: String
        private let title: String
        private let deliveryInfo: String
        private let deliveryFee: String
        private let point: String
        private let nPrice: String?
        private let sPrice: String
        private let badges: [String]
        private let inStock: Bool
        
        func toDomain() -> BanchanDetail {
            return .init(topImage: topImage, thumbImages: thumbImage, detailSection: detailSection, productDescription: productDescription, title: title, deliveryInfo: deliveryInfo, deliveryFee: deliveryFee, point: point, nPrice: nPrice, sPrice: sPrice, badges: badges, inStock: inStock)
        }
    }
    
    func toDomain() -> BanchanDetail {
        return data.toDomain()
    }
}
