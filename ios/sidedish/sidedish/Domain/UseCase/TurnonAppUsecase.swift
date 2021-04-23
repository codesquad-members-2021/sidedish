//
//  TurnonAppUsecase.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/21.
//

import Foundation
import Combine

protocol ManufactureDataforViewModel {
    func manufactureForMainViewCategory() -> AnyPublisher<[SideDishesCategory], Error>
}

class TurnonAppUsecase : ManufactureDataforViewModel {

    private let networkmanager : NetworkProtocol
    
    init(networkmanager : NetworkProtocol) {
        self.networkmanager = networkmanager
    }
    
    convenience init(baseUrl: String = "http://3.37.26.82:8080"){
        let networkmanager = NetworkManager(baseAddress: baseUrl)
        self.init(networkmanager : networkmanager)
    }
    
    func manufactureForMainViewCategory() -> AnyPublisher<[SideDishesCategory], Error> {
        return networkmanager.get(type: [SideDishesCategory].self, endPoint: .categories)
    }
    
    func manufactureforMainViewMainDishes() -> AnyPublisher<[SideDish], Error> {
        return networkmanager.get(type: [SideDish].self, endPoint: .main)
    }
    
    func manufactureforMainViewSideDishes() -> AnyPublisher<[SideDish], Error> {
        return networkmanager.get(type: [SideDish].self, endPoint: .side)
    }
    
    func manufactureforMainViewSoup() -> AnyPublisher<[SideDish], Error> {
        return networkmanager.get(type: [SideDish].self, endPoint: .soup)
    }

}
