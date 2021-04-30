//
//  BanchanListStorage.swift
//  SideDish
//
//  Created by 지북 on 2021/04/29.
//

import Foundation
import CoreData

enum CoreDataError: Error {
    case fetError
}

class CoreDataBanchanListStorage {
    private let coreDataManager: CoreDataManager
    
    init(manager: CoreDataManager = CoreDataManager.shared) {
        self.coreDataManager = manager
        setSectionEntity()
    }
    
    func setSectionEntity() {
        let requset: NSFetchRequest = BanchanSectionEntity.fetchRequest()
        
        coreDataManager.performBackgroundTask { context in
            do {
                let sectionEntities = try context.fetch(requset)
                if sectionEntities.count >= 3 { return }
                else {
                    try Section.allCases.forEach { section in
                        let banchanSectionEntity = BanchanSectionEntity.init(context: context)
                        try context.save()
                    }
                }
            } catch {
                print("error in sectionEntity")
            }
        }
    }
    func save(section: Section, requestDTO: BanchanListDTO) {
        let request: NSFetchRequest = BanchanSectionEntity.fetchRequest()
        
        coreDataManager.performBackgroundTask { context in
            do{
                let entities = requestDTO.toEntity(with: context)
                let sectionEntity = try context.fetch(request)
                
                entities.forEach { entity in
                    sectionEntity[section.rawValue].addToEntities(entity)
                }
                try context.save()
            } catch {
                fatalError()
            }
        }
    }
    
    func fetch(section: Section, handler: @escaping (Result<[Banchan],CoreDataError>) -> Void) {
        coreDataManager.performBackgroundTask { context in
            do {
                let fetchResult: NSFetchRequest = BanchanSectionEntity.fetchRequest()
                let requestEntity = try context.fetch(fetchResult)
                
                var sectionEntity: BanchanSectionEntity
                let index = section.rawValue
                print(requestEntity.count)
                if requestEntity[section.rawValue].entities?.array.count == 0 {
                    handler(.failure(.fetError))
                    return
                }

                sectionEntity = requestEntity[index]
                let entities = sectionEntity.entities?.array as! [BanchanEntity]
                print(entities.count)
                let newEntities = entities.map { entity in
                    entity.toDomain()
                }
                handler(.success(newEntities))
            } catch {
                handler(.failure(.fetError))
            }
        }
    }
    
    func deleteAll<T: NSManagedObject>(request: NSFetchRequest<T>) {
        coreDataManager.performBackgroundTask { context in
            let request: NSFetchRequest<NSFetchRequestResult> = T.fetchRequest()
            let delete = NSBatchDeleteRequest(fetchRequest: request)
            do {
                try context.execute(delete)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
