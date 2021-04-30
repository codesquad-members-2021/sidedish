//
//  DishesEntity+CoreDataProperties.swift
//  
//
//  Created by 오킹 on 2021/04/26.
//
//

import Foundation
import CoreData


extension DishesEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DishesEntity> {
        return NSFetchRequest<DishesEntity>(entityName: "DishesEntity")
    }

    @NSManaged public var category: String?
    @NSManaged public var dishes: [Dish]?
    @NSManaged public var name: String?

}
