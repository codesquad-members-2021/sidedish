//
//  SideDish.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/21.
//

import Foundation

// MARK: - Dishes
struct Dishes: Codable, Hashable, Equatable {
    private(set) var category: String
    private(set) var name: String
    private(set) var dishes: [Dish]
}

// MARK: - Dish
public class Dish: NSObject, Codable, NSSecureCoding, NSCoding {
    public static var supportsSecureCoding: Bool = true
    
    init(dishID: String,
         image: String,
         alt: String,
         deliveryType: String,
         title: String,
         dishDescription: String,
         normalPrice: String,
         sellingPrice: String,
         badge: String) {
        self.dishID = dishID
        self.image = image
        self.alt = alt
        self.deliveryType = deliveryType
        self.title = title
        self.dishDescription = dishDescription
        self.normalPrice = normalPrice
        self.sellingPrice = sellingPrice
        self.badge = badge
    }
    
    
    public func encode(with coder: NSCoder) {
        coder.encode(dishID, forKey: "dishId")
        coder.encode(title, forKey: "title")
        coder.encode(image, forKey: "image")
        coder.encode(alt, forKey: "alt")
        coder.encode(deliveryType, forKey: "deliveryType")
        coder.encode(dishDescription, forKey: "description")
        coder.encode(normalPrice, forKey: "normalPrice")
        coder.encode(sellingPrice, forKey: "sellingPrice")
        coder.encode(badge, forKey: "badge")
    }
    
    public required init?(coder: NSCoder) {
        dishID = coder.decodeObject(of: NSString.self, forKey: "dishid") as String? ?? ""
        title = coder.decodeObject(of: NSString.self, forKey: "title") as String? ?? ""
        image = coder.decodeObject(of: NSString.self, forKey: "image") as String? ?? ""
        alt = coder.decodeObject(of: NSString.self, forKey: "alt") as String? ?? ""
        deliveryType = coder.decodeObject(of: NSString.self, forKey: "deliveryType") as String? ?? ""
        dishDescription = coder.decodeObject(of: NSString.self, forKey: "description") as String? ?? ""
        normalPrice = coder.decodeObject(of: NSString.self, forKey: "normalPrice") as String? ?? ""
        sellingPrice = coder.decodeObject(of: NSString.self, forKey: "sellingPrice") as String? ?? ""
        badge = coder.decodeObject(of: NSString.self, forKey: "badge") as String? ?? ""
    }
    
//    public static func == (lhs: Dish, rhs: Dish) -> Bool {
//        return lhs.dishID == rhs.dishID &&
//            lhs.image == rhs.image &&
//            lhs.alt == rhs.alt &&
//            lhs.deliveryType == rhs.deliveryType &&
//            lhs.title == rhs.title &&
//            lhs.dishDescription == rhs.dishDescription &&
//            lhs.normalPrice == rhs.normalPrice &&
//            lhs.sellingPrice == rhs.sellingPrice &&
//            lhs.badge == rhs.badge
//    }
    
//    public func hash(into hasher: inout Hasher) {
//        hasher.combine(dishID)
//        hasher.combine(image)
//        hasher.combine(alt)
//        hasher.combine(deliveryType)
//        hasher.combine(dishDescription)
//        hasher.combine(normalPrice)
//        hasher.combine(sellingPrice)
//        hasher.combine(badge)
//    }
    
    private(set) var dishID: String
    private(set) var image: String
    private(set) var alt: String
    private(set) var deliveryType: String
    private(set) var title: String
    private(set) var dishDescription: String
    private(set) var normalPrice: String
    private(set) var sellingPrice: String
    private(set) var badge: String
    
    enum CodingKeys: String, CodingKey {
        case dishID = "dishId"
        case image, alt, deliveryType, title
        case dishDescription = "description"
        case normalPrice, sellingPrice, badge
    }
}

public class TestDish: NSObject {
    private(set) var dishID: String
    private(set) var image: String
    private(set) var alt: String
    private(set) var deliveryType: String
    private(set) var title: String
    private(set) var dishDescription: String
    private(set) var normalPrice: String
    private(set) var sellingPrice: String
    private(set) var badge: String
    
    enum CodingKeys: String, CodingKey {
        case dishID = "dishId"
        case image, alt, deliveryType, title
        case dishDescription = "description"
        case normalPrice, sellingPrice, badge
    }
    
    init(dishID: String, image: String, alt: String, deliveryType: String, title: String, dishDescription: String, normalPrice: String, sellingPrice: String, badge: String) {
        self.dishID = dishID
        self.image = image
        self.alt = alt
        self.deliveryType = deliveryType
        self.title = title
        self.dishDescription = dishDescription
        self.normalPrice = normalPrice
        self.sellingPrice = sellingPrice
        self.badge = badge
    }
}
