//
//  CoreDataMenuResponseStorage.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/26.
//

import Foundation
import CoreData
import UIKit
import Combine

class CoreDataMenuResponseStorage {

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
                assertionFailure("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    private func fetch<T: NSManagedObject>(request: NSFetchRequest<T>) -> [T] {
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
    
    func loadSaveDataInCoreData(category: String) -> AnyPublisher<[Dishes], CoreDataError>? {
        self.context = persistentContainer.viewContext
        var result: [Dishes] = []
        var resultOut: Future<[Dishes], CoreDataError>?
   
        do {
           
            let request: NSFetchRequest = DishesEntity.fetchRequest()
            request.predicate = NSPredicate(format: "category = %@", "\(category)")
            let contact = try context.fetch(request)
   
            contact.forEach { dishesEntity in
                guard let dishes = dishesEntity as? DishesEntity,
                      let category = dishes.category,
                      let name = dishes.name,
                      let dishesArray = dishes.dishes else {
                    return
                }
                result = [Dishes(category: category, name: name, dishes: dishesArray)]
                resultOut = Future<[Dishes], CoreDataError> { promise in
                    promise(.success(result))
                }
            }
        } catch {
            resultOut = Future<[Dishes], CoreDataError> { promise in
                promise(.failure(.someError))
                assertionFailure(error.localizedDescription)
            }
        }
       
        return resultOut?.eraseToAnyPublisher()
    }
    
    func deleteAll<T: NSManagedObject>(request: NSFetchRequest<T>){
        let request: NSFetchRequest<NSFetchRequestResult> = T.fetchRequest()
        let delete = NSBatchDeleteRequest(fetchRequest: request)
        
        do {
            try self.context.execute(delete)
        }
        catch {
            assertionFailure(error.localizedDescription)
        }
    }
    
    func deleteCategory(_ category: String) {
        self.context = persistentContainer.viewContext
        let request: NSFetchRequest<NSFetchRequestResult> = DishesEntity.fetchRequest()
        request.predicate = NSPredicate(format: "category = %@", "\(category)")
        let delete = NSBatchDeleteRequest(fetchRequest: request)
        
        do {
            try self.context.execute(delete)
        }
        catch {
            assertionFailure(error.localizedDescription)
        }
    }
}

enum CoreDataError: Error {
    case someError
}

