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
        let detailHash: String
        let image: String
        let alt: String
        let deliveryType: [String]
        let description: String
        let title: String
        let nPrice: String?
        let sPrice: String
        let badge: [String]?
        
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
