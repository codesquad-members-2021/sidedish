//
//  TurnonAppUsecase.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/21.
//

import Foundation
import Combine

protocol ManufactureDataforViewModel {
    
    func manufactureForMainViewCategory(completionHandler: @escaping (Just<[SideDishesCategoryManageable]>) -> ())
    
    func manufactureForMainViewSideDishes(endPoint: String,
                                          completionHandler: @escaping (Just<[SideDishManageable]>) -> ())
    
    func thumbnailForMainiewSideDishes(url: String, id: String,
                                       completionHandler: @escaping (Just<String>) -> ())
    
}

class TurnonAppUsecase: ManufactureDataforViewModel {

    private let repository: DishRepository
    
    init(repository: DishRepository) {
        self.repository = repository
        //self.repository.deleteAllInCoreData()
    }
    
    convenience init(baseUrl: String = "http://3.37.26.82:8080"){
        let repository = DishRepository(with: baseUrl)
        self.init(repository: repository)
    }
    
    func manufactureForMainViewCategory(completionHandler: @escaping (Just<[SideDishesCategoryManageable]>) -> ()) {
        return repository.getCategories { (publisher) in
            completionHandler(publisher)
        }
    }
    
    func manufactureForMainViewSideDishes(endPoint: String,
                                          completionHandler: @escaping (Just<[SideDishManageable]>) -> ()) {
        return repository.getSideDishes(endPoint: endPoint) { (publisher) in
            completionHandler(publisher)
        }
    }
    
    func thumbnailForMainiewSideDishes(url: String, id: String,
                                       completionHandler: @escaping (Just<String>) -> ()) {
        return repository.getSideDishThumbnailPath(from: url, id: id) { (publisher) in
            completionHandler(publisher)
        }
    }
}
