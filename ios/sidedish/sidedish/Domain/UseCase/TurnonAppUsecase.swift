//
//  TurnonAppUsecase.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/21.
//

import Foundation
import Combine

protocol ManufactureDataforViewModel {
    func manufactureForMainView() -> AnyPublisher<SideDishesCollection, Error>
}

class TurnonAppUsecase : ManufactureDataforViewModel {

    private let networkmanager : NetworkProtocol
    
    init(networkmanager : NetworkProtocol) {
        self.networkmanager = networkmanager
    }
    
    convenience init(){
        let networkmanager = NetworkManager(baseAddress: "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com")
        self.init(networkmanager : networkmanager)
    }
    
    func manufactureForMainView() -> AnyPublisher<SideDishesCollection, Error> {
        return networkmanager.get(type: SideDishesCollection.self, endPoint: .best)
    }
}
