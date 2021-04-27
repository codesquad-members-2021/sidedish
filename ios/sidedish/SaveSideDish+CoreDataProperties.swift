//
//  SaveSideDish+CoreDataProperties.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/27.
//
//

import Foundation
import CoreData


extension SaveSideDish {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SaveSideDish> {
        return NSFetchRequest<SaveSideDish>(entityName: "SaveSideDish")
    }

    @NSManaged public var badges: [String]?
    @NSManaged public var deliveryTypes: [String]?
    @NSManaged public var id: String?
    @NSManaged public var image: String?
    @NSManaged public var price: Int32
    @NSManaged public var saleprice: Int32
    @NSManaged public var subtitle: String?
    @NSManaged public var title: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "detailHash"
        case image
        case title
        case subtitle = "description"
        case price
        case salePrice
        case deliveryTypes
        case badges
    }
}

extension SaveSideDish : Identifiable {

}
