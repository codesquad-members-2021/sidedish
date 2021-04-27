//
//  CoreDataStorage.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/25.
//

import Foundation
import CoreData

final class CoreDataStorage {
    static let shared = CoreDataStorage()
    
    // MARK: - Core Data stack

        lazy var persistentContainer: NSPersistentContainer = {
            let container = NSPersistentContainer(name: "SideDish")
            container.loadPersistentStores(completionHandler: { (storeDescription, error) in
                if let error = error as NSError? {
                    fatalError("Unresolved error \(error), \(error.userInfo)")
                }
            })
            return container
        }()

        // MARK: - Core Data Saving support

        func saveContext () { 
            let context = persistentContainer.viewContext
            if context.hasChanges {
                do {
                    try context.save()
                } catch {
                    let nserror = error as NSError
                    fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
                }
            }
        }
}
