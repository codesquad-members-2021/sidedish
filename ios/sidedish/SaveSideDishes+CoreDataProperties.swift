//
//  SaveSideDishes+CoreDataProperties.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/27.
//
//

import Foundation
import CoreData


extension SaveSideDishes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SaveSideDishes> {
        return NSFetchRequest<SaveSideDishes>(entityName: "SaveSideDishes")
    }

    @NSManaged public var sideDish: [SaveSideDish]?

}

extension SaveSideDishes : Identifiable {

}
