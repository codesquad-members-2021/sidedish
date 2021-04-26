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
    
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    private var context : NSManagedObjectContext! = nil
    private var entity : NSEntityDescription! = nil
    private var entity2 : NSEntityDescription! = nil
    
    func fetch<T: NSManagedObject>(request: NSFetchRequest<T>) -> [T] {
        do { let fetchResult = try self.context.fetch(request)
            return fetchResult
            
        }
        catch { print(error.localizedDescription)
            return [] } }

    func save(_ items: [Dishes]) {
        self.context = appDelegate.persistentContainer.viewContext
        self.entity = NSEntityDescription.entity(forEntityName: "DishesEntity" , in: context)
       // self.entity2 = NSEntityDescription.entity(forEntityName: "DishEntity", in: context)
        
//        if let entity2 = self.entity2 {
//            let dish = NSManagedObject(entity: entity2, insertInto: self.context)
//            
//            
//            dish.setValue("둠바", forKey: "title")
//            dish.setValue("둠바", forKey: "title")
//            dish.setValue("둠바", forKey: "title")
//            dish.setValue("둠바", forKey: "title")
//            dish.setValue("둠바", forKey: "title")
//            dish.setValue("둠바", forKey: "title")
//            dish.setValue("둠바", forKey: "title")
//            dish.setValue("둠바", forKey: "title")
//        }
        
        if let entity = self.entity {
           let dish = NSManagedObject(entity: entity, insertInto: self.context)
            
            dish.setValue(items[0].category, forKey: "category")
            dish.setValue(items[0].dishes, forKey: "dishes")
            dish.setValue(items[0].name, forKey: "name")
            print("있어")
        }
        
        do {
            try context.save()
            print("성공")
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func loadSaveDataInCoreData() {
        do {
            print(1)
            self.context = appDelegate.persistentContainer.viewContext
            print(2)
            let contact = try context.fetch(DishesEntity.fetchRequest())
            print(3)
            contact.forEach { a in
                let test = a as? [Dishes]
                print("사단가")
                print(test?.last!.name, "쑤이쑤이쑤이")
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}
