//
//  DishesEntity+CoreDataClass.swift
//  
//
//  Created by 오킹 on 2021/04/26.
//
//

import Foundation
import CoreData

@objc(DishesEntity)
public class DishesEntity: NSManagedObject {
    static var identifier: String {
        return "\(self)"
    }
}
