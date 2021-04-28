//
//  Repository.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/25.
//

import CoreData
import Combine

final class DishRepository {
    
    private let coreData = CoreDataStorage.shared
    private var context : NSManagedObjectContext!
    private var sideDishEntity : NSEntityDescription!
    private var categoryEntity : NSEntityDescription!

    private var cancelBag = Set<AnyCancellable>()
    
    private let networkManager: AFNetworkManagable!
    
    init(with url: String) {
        self.context = coreData.persistentContainer.viewContext
        self.sideDishEntity = NSEntityDescription.entity(forEntityName: SaveSideDish.Properties.entity, in: context)
        self.categoryEntity = NSEntityDescription.entity(forEntityName: SaveSideDishes.Properties.entity, in: context)
        self.networkManager = NetworkManager(with: url)
    }

    func getCategories(completionHandler: @escaping (Just<[SideDishesCategoryManageable]>) -> ()) {
        
        let categories = networkManager.get(decodingType: [SideDishesCategory].self,
                                            endPoint: EndPoint.categories)
        
        categories.sink { (_) in
        } receiveValue: { categories in
            if let categoryEntity = self.categoryEntity {
                categories.forEach {
                    let sideDishCategory = NSManagedObject(entity: categoryEntity, insertInto: self.context)
                    sideDishCategory.setValue($0.id, forKey: SaveSideDishes.Properties.id)
                    sideDishCategory.setValue($0.categoryName, forKey: SaveSideDishes.Properties.categoryName)
                    sideDishCategory.setValue($0.endPoint, forKey: SaveSideDishes.Properties.endPoint)
                }
                self.save()
                completionHandler(self.loadCategories())
            }
        }.store(in: &cancelBag)
    }
    
    private func save() {
        do {
            try self.context.save()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    private func loadCategories() -> Just<[SideDishesCategoryManageable]> {
        let sideDishes = try! context.fetch(SaveSideDishes.fetchRequest()) as! [SideDishesCategoryManageable]
        let publisher = Just(sideDishes)
        return publisher
    }
    
    func getSideDishes(endPoint: String, completionHandler: @escaping (Just<[SideDishManageable]>) -> ()) {
        
        let mainSideDishes = networkManager.get(decodingType: [SideDish].self, endPoint: endPoint)
        
        mainSideDishes.sink { (_) in
        } receiveValue: { (dishes) in
            if let sideDishEntity = self.sideDishEntity {
                
                var sideDishes = [NSManagedObject]()
                dishes.forEach {
                    let sideDish = NSManagedObject(entity: sideDishEntity, insertInto: self.context)
                    sideDish.setValue($0.id, forKey: SaveSideDish.Properties.id)
                    sideDish.setValue($0.image, forKey: SaveSideDish.Properties.image)
                    sideDish.setValue($0.title, forKey: SaveSideDish.Properties.title)
                    sideDish.setValue($0.description, forKey: SaveSideDish.Properties.subtitle)
                    sideDish.setValue($0.price, forKey: SaveSideDish.Properties.price)
                    sideDish.setValue($0.salePrice, forKey: SaveSideDish.Properties.salePrice)
                    sideDish.setValue($0.deliveryTypes, forKey: SaveSideDish.Properties.deliveryTypes)
                    sideDish.setValue($0.badges, forKey: SaveSideDish.Properties.badges)
                    sideDishes.append(sideDish)
                }
                
                self.updateCategory(of: endPoint, with: sideDishes)
                self.save()

                completionHandler(self.loadSideDishes(of: endPoint))
            }
        }.store(in: &cancelBag)
    }
    
    private func updateCategory(of endPoint: String, with sideDishes: [NSManagedObject]) {
        let fetchRequest = findCategoryForEndPoint(endPoint)
        let objectToUpdate = try! self.context.fetch(fetchRequest).first!
        objectToUpdate.setValue(sideDishes, forKey: SaveSideDishes.Properties.sideDish)
    }

    private func loadSideDishes(of endPoint: String) -> Just<[SideDishManageable]> {
        let fetchRequest = findCategoryForEndPoint(endPoint)
        let targetCategory = try! context.fetch(fetchRequest).first!
        let sideDishes = targetCategory.sideDish! as [SideDishManageable]
        let publisher = Just(sideDishes)
        return publisher
    }
    
    private func findCategoryForEndPoint(_ endPoint: String) -> NSFetchRequest<SaveSideDishes> {
        let fetchRequest: NSFetchRequest<SaveSideDishes> = SaveSideDishes.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "endPoint == %@", endPoint)
        return fetchRequest
    }
    
    func deleteAllInCoreData(){
        let saveSideDishesRequest: NSFetchRequest<SaveSideDishes> = SaveSideDishes.fetchRequest()
        let saveSideDishRequest: NSFetchRequest<SaveSideDish> = SaveSideDish.fetchRequest()
        self.deleteAll(request: saveSideDishRequest)
        self.deleteAll(request: saveSideDishesRequest)
    }
    
    private func deleteAll<T: NSManagedObject>(request: NSFetchRequest<T>) {
        let request: NSFetchRequest<NSFetchRequestResult> = T.fetchRequest()
        let delete = NSBatchDeleteRequest(fetchRequest: request)
        try! self.context.execute(delete)
    }
}
