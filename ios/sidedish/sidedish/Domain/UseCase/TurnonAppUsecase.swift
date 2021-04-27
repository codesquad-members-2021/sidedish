//
//  TurnonAppUsecase.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/21.
//

import Foundation
import Combine
import Alamofire

protocol ManufactureDataforViewModel {
    
    func manufactureForMainViewCategory(completionHandler: @escaping (Just<[SideDishesCategoryManageable]>) -> ())
    
    func manufactureForMainViewSideDishes(endPoint: String,
                                          completionHandler: @escaping (Just<[SideDishManageable]>) -> ())
    
}

class TurnonAppUsecase: ManufactureDataforViewModel {

    private let repoprotocol: DishRepository
    private let networkmanager: AFNetworkManagable
    
    init(networkmanager: AFNetworkManagable) {
        self.repoprotocol = DishRepository()
        self.networkmanager = networkmanager
        //self.repoprotocol.getCategories()
//        self.repoprotocol.getMainDishes()
        self.repoprotocol.deleteAllInCoreData()
        //self.repoprotocol.helloLollo()
//        self.repoprotocol.밥먹어요롤로()
    }
    
    convenience init(baseUrl: String = "http://3.37.26.82:8080"){
        let networkmanager = NetworkManager(baseAddress: baseUrl)
        self.init(networkmanager : networkmanager)
    }
    
    func manufactureForMainViewCategory(completionHandler: @escaping (Just<[SideDishesCategoryManageable]>) -> ()) {
        return repoprotocol.getCategories { (publisher) in
            completionHandler(publisher)
        }
    }
    
    func manufactureForMainViewSideDishes(endPoint: String,
                                          completionHandler: @escaping (Just<[SideDishManageable]>) -> ()) {
        return repoprotocol.getSideDishes(endPoint: endPoint) { (publisher) in
            completionHandler(publisher)
        }
    }
}
