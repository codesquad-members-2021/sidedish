//
//  SaveSideDish+CoreDataClass.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/27.
//
//

import Foundation
import CoreData

@objc(SaveSideDish)
public class SaveSideDish: NSManagedObject, Decodable, NSSecureCoding {
    
    public static var supportsSecureCoding: Bool = true
    
    public required convenience init?(coder: NSCoder) {
        self.init(coder: coder)
    }
    
    public func encode(with coder: NSCoder) {
        coder.encode(id, forKey: CodingKeys.id.rawValue)
        coder.encode(image, forKey: CodingKeys.image.rawValue)
        coder.encode(title, forKey: CodingKeys.title.rawValue)
        coder.encode(subtitle, forKey: CodingKeys.subtitle.rawValue)
        coder.encode(price, forKey: CodingKeys.price.rawValue)
        coder.encode(salePrice, forKey: CodingKeys.salePrice.rawValue)
        coder.encode(deliveryTypes, forKey: CodingKeys.deliveryTypes.rawValue)
        coder.encode(badges, forKey: CodingKeys.badges.rawValue)
        coder.encode(thumbnailPath, forKey: CodingKeys.thumbnailPath.rawValue)
    }

    enum CodingKeys: String, CodingKey {
        case id = "detailHash"
        case image
        case title
        case subtitle = "description"
        case price
        case salePrice
        case deliveryTypes
        case badges
        case thumbnailPath
     }

    required convenience public init(from decoder: Decoder) throws {
        try self.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.id = try container.decode(String.self, forKey: .id)
        self.image = try container.decode(String.self, forKey: .image)
        self.title = try container.decode(String.self, forKey: .title)
        self.subtitle = try container.decode(String.self, forKey: .subtitle)
        self.price = try container.decode(Int16.self, forKey: .price)
        self.salePrice = try container.decode(Int16.self, forKey: .salePrice)
        self.deliveryTypes = try container.decode([String].self, forKey: .deliveryTypes)
        self.badges = try container.decode([String].self, forKey: .badges)
        self.thumbnailPath = try container.decode(String.self, forKey: .thumbnailPath)
    }

}
