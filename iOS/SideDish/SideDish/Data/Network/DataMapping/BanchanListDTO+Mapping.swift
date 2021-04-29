//
//  BanchanListDTO+Mapping.swift
//  AlamofirePratice
//
//  Created by 지북 on 2021/04/21.
//

import Foundation
import CoreData

struct BanchanListDTO: Decodable {
    private let body: [BanchanListItemDTO]
}

extension BanchanListDTO {
    struct BanchanListItemDTO: Decodable {
        private let detailHash: Int
        private let image: String
        private let alt: String
        private let deliveryType: [String]
        private let description: String
        private let title: String
        private var nPrice: String?
        private let sPrice: String
        private let badges: [String]?
        
        func toDomain() -> Banchan {
            return .init(detailHash: detailHash, image: image, alt: alt, title: title, description: description, nPrice: nPrice, sPrice: sPrice, badges: badges, deliveryType: deliveryType)
        }
        
        func toEntity(with context: NSManagedObjectContext) -> BanchanEntity {
            let entity = BanchanEntity.init(context: context)
            let sectionEntity = BanchanSectionEntity.init(context: context)
            
            entity.detailHash = Int16(detailHash)
            entity.image = image
            entity.alt = alt
            entity.deliveryType = deliveryType
            entity.banchanDescription = description
            entity.title = title
            entity.nPrice = nPrice
            entity.sPrice = sPrice
            entity.badges = badges
            
            sectionEntity.addToEntities(entity)
            return entity
        }
    }
    
    func toDomain() -> [Banchan] {
        let banchans = self.body.map { banchanListitemDTO in
            banchanListitemDTO.toDomain()
        }
        return banchans
    }
    
    func toEntity(with context: NSManagedObjectContext) -> [BanchanEntity] {
        let entities = body.map { banchanListItemDTO in
            banchanListItemDTO.toEntity(with: context)
        }
        return entities
    }
}

extension BanchanEntity {
    func toDomain() -> Banchan {
        return Banchan.init(detailHash: Int(detailHash), image: image!, alt: alt!, title: title!, description: banchanDescription!, nPrice: nPrice, sPrice: sPrice!, badges: badges, deliveryType: deliveryType!)
    }
}
