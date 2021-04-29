//
//  BanchanListStorage.swift
//  SideDish
//
//  Created by 지북 on 2021/04/29.
//

import Foundation
import CoreData

class CoreDataBanchanListStorage {
    private let coreDataManager: CoreDataManager
    
    init(manager: CoreDataManager = CoreDataManager.shared) {
        self.coreDataManager = manager
    }
    
    func save(requestDTO: BanchanListDTO) {
        coreDataManager.performBackgroundTask { context in
            do{
                _ = requestDTO.toEntity(with: context)
                try context.save()
            } catch {
                fatalError()
            }
        }
    }
    
    func fetch(section: Section, handler: @escaping ([BanchanListDTO]) -> Void) {
        coreDataManager.performBackgroundTask { context in
            do {
                let fetchResult: NSFetchRequest = BanchanSectionEntity.fetchRequest()
                let requestEntity = try context.fetch(fetchResult)
                
                let sectionEntity = requestEntity.filter { sectionEntity in
                    Int(sectionEntity.section) == section.rawValue
                }
                
                let entities = sectionEntity.forEach { section in
                    section.entities?.array as! [BanchanEntity]
                }
            } catch {
                
            }
        }
    }
}
