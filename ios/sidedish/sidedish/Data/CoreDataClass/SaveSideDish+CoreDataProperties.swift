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
        return NSFetchRequest<SaveSideDish>(entityName: Properties.entity)
    }

    @NSManaged public var badges: [String]?
    @NSManaged public var deliveryTypes: [String]?
    @NSManaged public var id: String
    @NSManaged public var image: String
    @NSManaged public var price: Int16
    @NSManaged public var salePrice: Int16
    @NSManaged public var subtitle: String
    @NSManaged public var title: String
    
    enum Properties {
        static let entity = "SaveSideDish"
        static let id = "id"
        static let image = "image"
        static let title = "title"
        static let subtitle = "subtitle"
        static let price = "price"
        static let salePrice = "salePrice"
        static let deliveryTypes = "deliveryTypes"
        static let badges = "badges"
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
        return Int(self.salePrice)
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
