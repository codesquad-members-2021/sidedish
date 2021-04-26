//
//  Repository.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/25.
//

import Foundation
import CoreData

final class DishRepository {
    private let coreData = CoreDataStorage.shared
    private var context : NSManagedObjectContext!
    private var saveSideDish : SaveSideDish!
    
    init() {
        
    }
    
    struct 사이드디쉬디티오 : Decodable{
        private(set) var id: String
        private(set) var image : String
        private(set) var title: String
        private(set) var subtitle: String
        private(set) var price: Int
        private(set) var salePrice: Int
        private(set) var deliveryTypes: [String]?
        private(set) var badges: [String]?
    }
}
