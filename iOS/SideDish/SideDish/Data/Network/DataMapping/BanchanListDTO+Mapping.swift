//
//  BanchanListDTO+Mapping.swift
//  AlamofirePratice
//
//  Created by 지북 on 2021/04/21.
//

import Foundation

struct BanchanListDTO: Codable {
    let body: [BanchanListItemDTO]
}

extension BanchanListDTO {
    struct BanchanListItemDTO: Codable {
        let hash: String
        let image: String
        let alt: String
        let deliveryType: [String]
        let description: String
        let title: String
        let normalPrice: String?
        let salePrice: String
        let badge: [String]?
        
        private enum CodingKeys: String, CodingKey {
            case hash = "detail_hash"
            case image
            case alt
            case deliveryType = "delivery_type"
            case description
            case title
            case normalPrice = "n_price"
            case salePrice = "s_price"
            case badge
        }
    }
}

extension BanchanListDTO {
    func toDomain() -> [Banchan] {
        let banchans = self.body.map {
            $0.toDomain()
        }
        return banchans
    }
}

extension BanchanListDTO.BanchanListItemDTO {
    func toDomain() -> Banchan {
        return .init(hash: hash, image: image, alt: alt, title: title, description: description, netPrice: normalPrice, salePrice: salePrice, badge: badge, deliveryType: deliveryType)
    }
}
