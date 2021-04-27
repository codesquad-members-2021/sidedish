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
    
    func manufactureForMainViewCategory() -> AnyPublisher<SideDishesCategoryManageable, Never>
    
    func manufactureForMainViewSideDishes(endPoint: String) -> AnyPublisher<SideDishManageable, Never>
    
}

class TurnonAppUsecase: ManufactureDataforViewModel {

    private let repoprotocol: tempRepoProtocol
    private let networkmanager: AFNetworkManagable
    
    init(networkmanager: AFNetworkManagable) {
        self.repoprotocol = DishRepository()
        self.networkmanager = networkmanager
        //self.repoprotocol.getCategories()
//        self.repoprotocol.getMainDishes()
//        self.repoprotocol.deleteAllInCoreData()
        //self.repoprotocol.helloLollo()
//        self.repoprotocol.밥먹어요롤로()
    }
    
    convenience init(baseUrl: String = "http://3.37.26.82:8080"){
        let networkmanager = NetworkManager(baseAddress: baseUrl)
        self.init(networkmanager : networkmanager)
    }
    
    func manufactureForMainViewCategory() -> AnyPublisher<SideDishesCategoryManageable, Never> {
        repoprotocol.getCategories {
            return repoprotocol.loadCategories()
        }
    }
    
    func manufactureForMainViewSideDishes(endPoint: String) -> AnyPublisher<SideDishManageable, Never> {
        return repoprotocol.loadMainDishes() //networkmanager.get(decodingType: [SideDish].self, endPoint: endPoint)
    }
}
