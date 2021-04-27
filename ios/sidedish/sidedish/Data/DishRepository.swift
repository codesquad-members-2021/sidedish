//
//  Repository.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/25.
//

import CoreData
import Combine
import Alamofire

//protocol tempRepoProtocol {
//    func getMainDishes() -> Void
//    func loadMainDishes() -> AnyPublisher<SideDishManageable, Never>
//    func getCategories()
//    func loadCategories() -> AnyPublisher<SideDishesCategoryManageable, Never>
//    func 밥먹어요롤로() -> Void
//    func deleteAllInCoreData() -> Void
//}


final class DishRepository {
    
    private let coreData = CoreDataStorage.shared
    private var context : NSManagedObjectContext!
    private var sideDishEntity : NSEntityDescription!
    private var categoryEntity : NSEntityDescription!
    
    private let networkManager: AFNetworkManagable!
    
    private var subscription = Set<AnyCancellable>()
    
    init() {
        self.context = coreData.persistentContainer.viewContext
        self.sideDishEntity = NSEntityDescription.entity(forEntityName: "SaveSideDish", in: context)
        self.categoryEntity = NSEntityDescription.entity(forEntityName: "SaveSideDishes", in: context)
        self.networkManager = NetworkManager(baseAddress: "http://3.37.26.82:8080")
    }
    
    func update() {
        //날짜가 달라 get~~
        //날짜가 같아 load~~
    }
    
    func getCategories(completionHandler: @escaping (Just<[SideDishesCategoryManageable]>) -> ()) {
        
        let categories = networkManager.get(decodingType: [SideDishesCategory].self, endPoint: EndPoint.categories)
        
        categories.sink { (error) in
            print(error)
        } receiveValue: { categories in
            if let categoryEntity = self.categoryEntity {
                categories.forEach {
                    let sideDishCategory = NSManagedObject(entity: categoryEntity, insertInto: self.context)
                    sideDishCategory.setValue($0.id, forKey: "id")
                    sideDishCategory.setValue($0.categoryName, forKey: "categoryName")
                    sideDishCategory.setValue($0.endPoint, forKey: "endPoint")
                }
                self.save()
                completionHandler(self.loadCategories())
            }
        }.store(in: &subscription)
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
        
        mainSideDishes.sink { (error) in
            print(error)
        } receiveValue: { (dishes) in
            if let sideDishEntity = self.sideDishEntity {
                
                var sideDishes = [NSManagedObject]()

                dishes.forEach {
                    let sideDish = NSManagedObject(entity: sideDishEntity, insertInto: self.context)
                    sideDish.setValue($0.id, forKey: "id")
                    sideDish.setValue($0.image, forKey: "image")
                    sideDish.setValue($0.title, forKey: "title")
                    sideDish.setValue($0.description, forKey: "subtitle")
                    sideDish.setValue($0.price, forKey: "price")
                    sideDish.setValue($0.salePrice, forKey: "saleprice")
                    sideDish.setValue($0.deliveryTypes, forKey: "deliveryTypes")
                    sideDish.setValue($0.badges, forKey: "badges")
                    sideDishes.append(sideDish)
                }
                
                self.updateCategory(of: endPoint, with: sideDishes)
                self.save()
                
                completionHandler(self.loadSideDishes(of: endPoint))
            }
        }.store(in: &subscription)
    }
    
    private func updateCategory(of endPoint: String, with sideDishes: [NSManagedObject]) {
        let fetchRequest = findCategoryForEndPoint(endPoint)
        let objectToUpdate = try! self.context.fetch(fetchRequest).first!
        objectToUpdate.setValue(sideDishes, forKey: "sideDish")
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
}


//delete 관련
extension DishRepository {
    
    func 밥먹어요롤로() {
        let request: NSFetchRequest<SaveSideDish> = SaveSideDish.fetchRequest()
        let fetchresult = self.fetch(request: request)
        print(self.delete(object: fetchresult.last!))
    }
    
    func deleteAll<T: NSManagedObject>(request: NSFetchRequest<T>) -> Bool {
        let request: NSFetchRequest<NSFetchRequestResult> = T.fetchRequest()
        let delete = NSBatchDeleteRequest(fetchRequest: request)
        do {
            try self.context.execute(delete)
            return true
        } catch {
            return false
        }
    }
    
    func deleteAllInCoreData(){
        let request: NSFetchRequest<SaveSideDishes> = SaveSideDishes.fetchRequest()
        let request2: NSFetchRequest<SaveSideDish> = SaveSideDish.fetchRequest()
        print("반찬삭제",self.deleteAll(request: request2))
        print("카테고리삭제",self.deleteAll(request: request))
    }
    
    private func delete(object: NSManagedObject) -> Bool {
        self.context.delete(object)
        do {
            try context.save()
            return true
        } catch {
            return false
        }
    }
    
    func fetch<T: NSManagedObject>(request: NSFetchRequest<T>) -> [T] {
        do {
            let fetchResult = try self.context.fetch(request)
            
            return fetchResult
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
    
}
