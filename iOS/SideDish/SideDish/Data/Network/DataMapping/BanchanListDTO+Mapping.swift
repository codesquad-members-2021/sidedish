//
//  BanchanListDTO+Mapping.swift
//  AlamofirePratice
//
//  Created by 지북 on 2021/04/21.
//

import Foundation

struct BanchanListDTO: Codable {
    private let body: [BanchanListItemDTO]
}

extension BanchanListDTO {
    struct BanchanListItemDTO: Codable {
        private let detailHash: String
        private let image: String
        private let alt: String
        private let deliveryType: [String]
        private let description: String
        private let title: String
        private let nPrice: String?
        private let sPrice: String
        private let badge: [String]?
        
        func toDomain() -> Banchan {
            return .init(detailHash: detailHash, image: image, alt: alt, title: title, description: description, nPrice: nPrice, sPrice: sPrice, badge: badge, deliveryType: deliveryType)
        }
    }
    
    func toDomain() -> [Banchan] {
        let banchans = self.body.map { banchanListitemDTO in
            banchanListitemDTO.toDomain()
        }
        return banchans
    }
}
