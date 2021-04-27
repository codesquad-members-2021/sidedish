//
//  Repository.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/25.
//

import CoreData
import Combine

protocol tempRepoProtocol {
    func getMainDishes() -> Void
    func helloLollo() -> Void
    func 밥먹어요롤로() -> Void
    func deleteAllInCoreData() -> Void
}


final class DishRepository: tempRepoProtocol{
    private let coreData = CoreDataStorage.shared
    private var context : NSManagedObjectContext!
    private var entity : NSEntityDescription!
    
    private var subscription = Set<AnyCancellable>()
    
    init() {
        self.context = coreData.persistentContainer.viewContext
        self.entity = NSEntityDescription.entity(forEntityName: "SaveSideDish", in: context)
    }
    
    func 밥먹어요롤로(){
        let request: NSFetchRequest<SaveSideDish> = SaveSideDish.fetchRequest()
        let fetchresult = self.fetch(request: request)
        print(self.delete(object: fetchresult.last!))
        helloLollo()
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
        let request: NSFetchRequest<SaveSideDish> = SaveSideDish.fetchRequest()
        print(self.deleteAll(request: request))
    }
    
    func getMainDishes(){
        let networkManager = NetworkManager(baseAddress: "http://3.37.26.82:8080")
        let mainSideDishes = networkManager.get(decodingType: [사이드디쉬디티오].self, endPoint: "/main")
        
        mainSideDishes.sink { (_) in
        } receiveValue: { (main) in
            if let entity = self.entity {
                main.forEach {
                    let sideDish = NSManagedObject(entity: entity, insertInto: self.context)
                    sideDish.setValue($0.id, forKey: "id")
                    sideDish.setValue($0.image, forKey: "image")
                    sideDish.setValue($0.title, forKey: "title")
                    sideDish.setValue($0.subtitle, forKey: "subtitle")
                    sideDish.setValue($0.price, forKey: "price")
                    sideDish.setValue($0.salePrice, forKey: "saleprice")
                    sideDish.setValue($0.deliveryTypes, forKey: "deliveryTypes")
                    sideDish.setValue($0.badges, forKey: "badges")
                }
                do {
                    try self.context.save()
                } catch{
                    print(error.localizedDescription)
                }
            }
        }.store(in: &subscription)
        
    }
    
    func helloLollo(){
        do{
            let lollosidedish = try context.fetch(SaveSideDish.fetchRequest()) as! [SaveSideDish]
            lollosidedish.forEach {
                print($0.title)
            }
        }catch{
            print(error.localizedDescription)
        }
    }
    private func delete(object: NSManagedObject) -> Bool{
        self.context.delete(object)
        do{
            try context.save()
            return true
        }
        catch{
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
