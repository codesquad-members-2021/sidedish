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
    @NSManaged public var thumbnailPath: String?
    
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
        static let thumbnailPath = "thumbnailPath"
    }
    
    func getID() -> String {
        self.id
    }
    
    func getTitle() -> String {
        return self.title
    }
    
    func getImageURL() -> String {
        return self.image
    }
    
    func getThumbnailPath() -> String? {
        return self.thumbnailPath
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
    
    func updateThumbnailPath(_ path: String) {
        self.thumbnailPath = path
    }
}

extension SaveSideDish : Identifiable {

}
