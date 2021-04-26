//
//  CoreDataMenuResponseStorage.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/26.
//

import Foundation
import CoreData
import UIKit

class CoreDataMenuResponseStorage {
    
    //private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    private var context : NSManagedObjectContext! = nil
    private var entity : NSEntityDescription! = nil
    
    static let shared = CoreDataMenuResponseStorage()
    
    // MARK: - Core Data stack
    lazy var persistentContainer: NSPersistentContainer = {
  
        let container = NSPersistentContainer(name: "CoreData")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {

                assertionFailure("Unresolved error \(error), \(error.userInfo)")
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
    
    func fetch<T: NSManagedObject>(request: NSFetchRequest<T>) -> [T] {
        do {
            let fetchResult = try self.context.fetch(request)
            return fetchResult
        }
        catch {
            assertionFailure(error.localizedDescription)
            return []
        }
    }

    func save(_ items: [Dishes]) {
        self.context = persistentContainer.viewContext
        self.entity = NSEntityDescription.entity(forEntityName: DishesEntity.identifier , in: context)

        if let entity = self.entity {
           let dish = NSManagedObject(entity: entity, insertInto: self.context)
            
            dish.setValue(items[0].category, forKey: "category")
            dish.setValue(items[0].dishes, forKey: "dishes")
            dish.setValue(items[0].name, forKey: "name")
        }
        
        do {
            try context.save()
        } catch {
            assertionFailure(error.localizedDescription)
        }
    }
    
    func loadSaveDataInCoreData() {
        do {
            self.context = persistentContainer.viewContext
            let contact = try context.fetch(DishesEntity.fetchRequest())

            contact.forEach { a in
                guard let test = a as? DishesEntity,
                      let category = test.category,
                      let dishes = test.dishes else {
                    return
                }
                print(dishes.last?.badge, "쑤이쑤이쑤이")
            }
        } catch {
            assertionFailure(error.localizedDescription)
        }
    }
    
    func deleteAll<T: NSManagedObject>(request: NSFetchRequest<T>) -> Bool {
        let request: NSFetchRequest<NSFetchRequestResult> = T.fetchRequest()
        let delete = NSBatchDeleteRequest(fetchRequest: request)
        
        do {
            try self.context.execute(delete)
            return true
        }
        catch {
            assertionFailure(error.localizedDescription)
            return false
            
        }
    }
}
