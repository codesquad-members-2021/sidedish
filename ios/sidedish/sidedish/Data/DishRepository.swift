//
//  Repository.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/25.
//

import CoreData
import Combine
import Alamofire

protocol tempRepoProtocol {
    func getMainDishes() -> Void
    func loadMainDishes() -> AnyPublisher<SideDishManageable, Never>
    func getCategories(closure: @escaping () -> AnyPublisher<SideDishesCategoryManageable, Never>)
    func loadCategories() -> AnyPublisher<SideDishesCategoryManageable, Never>
    func 밥먹어요롤로() -> Void
    func deleteAllInCoreData() -> Void
}


final class DishRepository: tempRepoProtocol {
    
    private let coreData = CoreDataStorage.shared
    private var context : NSManagedObjectContext!
    private var entity : NSEntityDescription!
    private var categoryEntity : NSEntityDescription!
    
    private let networkManager: AFNetworkManagable!
    
    private var subscription = Set<AnyCancellable>()
    
    init() {
        self.context = coreData.persistentContainer.viewContext
        self.entity = NSEntityDescription.entity(forEntityName: "SaveSideDish", in: context)
        self.categoryEntity = NSEntityDescription.entity(forEntityName: "SaveSideDishes", in: context)
        self.networkManager = NetworkManager(baseAddress: "http://3.37.26.82:8080")
    }
    
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
        } catch{
            return false
        }
    }
    
    func deleteAllInCoreData(){
        let request: NSFetchRequest<SaveSideDishes> = SaveSideDishes.fetchRequest()
        print(self.deleteAll(request: request))
    }
    
    func update() {
        //날짜가 달라 get~~
        //날짜가 같아 load~~
    }
    
    func getCategories(closure: @escaping () -> AnyPublisher<SideDishesCategoryManageable, Never>) {
        let categories = networkManager.get(decodingType: [SideDishesCategory].self, endPoint: EndPoint.categories)
        
        categories.sink { (_) in
        } receiveValue: { [self] (main) in
            if let entity = self.categoryEntity {
                main.forEach {
                    let sideDishCategory = NSManagedObject(entity: entity, insertInto: self.context)
                    sideDishCategory.setValue($0.id, forKey: "id")
                    sideDishCategory.setValue($0.categoryName, forKey: "categoryName")
                    sideDishCategory.setValue($0.endPoint, forKey: "endPoint")
                }
                do {
                    try self.context.save()
                } catch {
                    print(error.localizedDescription)
                }
                closure()
            }
        }.store(in: &subscription)
    }
    
    func loadCategories() -> AnyPublisher<SideDishesCategoryManageable, Never> {
        
        let sidedish = try! context.fetch(SaveSideDishes.fetchRequest()) as! [SideDishesCategoryManageable]
        sidedish.forEach {
            print($0.getName())
        }
        let temp = sidedish.publisher.eraseToAnyPublisher()
        return temp
    }
    
    func loadMainDishes() -> AnyPublisher<SideDishManageable, Never> {
        let sidedish = try! context.fetch(SaveSideDish.fetchRequest()) as! [SideDishManageable]
        let temp = sidedish.publisher.eraseToAnyPublisher()
        return temp
    }
    
    func getMainDishes() {
        let mainSideDishes = networkManager.get(decodingType: [SideDish].self, endPoint: "/main")
        
        mainSideDishes.sink { (_) in
        } receiveValue: { (main) in
            if let entity = self.entity {
                
                var sideDishes = [NSManagedObject]()
                
                main.forEach {
                    let sideDish = NSManagedObject(entity: entity, insertInto: self.context)
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
                
                //                let sideDishes2 = NSManagedObject(entity: self.entity2, insertInto: self.context)
                //                sideDishes2.setValue("테스트", forKey: "categoryName")
                //                sideDishes2.setValue(0, forKey: "id")
                //                sideDishes2.setValue(sideDishes, forKey: "sideDish")
                do {
                    try self.context.save()
                } catch {
                    print(error.localizedDescription)
                }
            }
        }.store(in: &subscription)
        
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

class 사이드디쉬디티오: NSObject, Decodable{
    
    var id: String
    var image : String
    var title: String
    var subtitle: String
    var price: Int
    var salePrice: Int
    var deliveryTypes: [String]?
    var badges: [String]?
    
    enum CodingKeys: String, CodingKey {
        case id = "detailHash"
        case image
        case title
        case subtitle = "description"
        case price
        case salePrice
        case deliveryTypes
        case badges
    }
}
