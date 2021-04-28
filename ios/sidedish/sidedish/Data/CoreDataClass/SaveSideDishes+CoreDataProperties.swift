//
//  SaveSideDishes+CoreDataProperties.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/27.
//
//

import Foundation
import CoreData


extension SaveSideDishes: SideDishesCategoryManageable {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SaveSideDishes> {
        return NSFetchRequest<SaveSideDishes>(entityName: Properties.entity)
    }
    
    @NSManaged public var categoryName: String
    @NSManaged public var endPoint: String
    @NSManaged public var id: Int16
    @NSManaged public var sideDish: [SaveSideDish]?
    
    enum Properties {
        static let entity = "SaveSideDishes"
        static let categoryName = "categoryName"
        static let endPoint = "endPoint"
        static let id = "id"
        static let sideDish = "sideDish"
    }
    
    func getName() -> String {
        self.categoryName
    }
    
    func getEndpoint() -> String {
        self.endPoint
    }
    
    func getID() -> Int {
        Int(self.id)
    }
}

extension SaveSideDishes : Identifiable {

}
