//
//  SaveSideDish+CoreDataProperties.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/27.
//
//

import Foundation
import CoreData


extension SaveSideDish: SideDishManageable {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SaveSideDish> {
        return NSFetchRequest<SaveSideDish>(entityName: "SaveSideDish")
    }

    @NSManaged public var badges: [String]?
    @NSManaged public var deliveryTypes: [String]?
    @NSManaged public var id: String
    @NSManaged public var image: String
    @NSManaged public var price: Int16
    @NSManaged public var saleprice: Int16
    @NSManaged public var subtitle: String
    @NSManaged public var title: String
    
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
    
    func getTitle() -> String {
        return self.title
    }
    
    func getimage() -> String {
        return self.image
    }
    
    func getdescription() -> String {
        return self.subtitle
    }
    
    func getPrice() -> Int {
        return Int(self.price)
    }
    
    func getSalePrice() -> Int {
        return Int(self.saleprice)
    }
    
    func getDeliveryTypes() -> [String]? {
        return self.deliveryTypes
    }
    
    func getbadge() -> [String]? {
        return self.badges
    }
}

extension SaveSideDish : Identifiable {

}
