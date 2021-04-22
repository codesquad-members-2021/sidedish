//
//  TurnonAppUsecase.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/21.
//

import Foundation
import Combine

protocol manufactureDataforViewModel {
    func factureToMainView() -> AnyPublisher<SideDishesCollection, Error>
    func factureToDetailView() -> Void
}

class TurnonAppUsecase : manufactureDataforViewModel {

    private let networkmanager : NetworkProtocol
    
    init(networkmanager : NetworkProtocol) {
        self.networkmanager = networkmanager
    }
    
    convenience init(){
        let networkmanager = NetworkManager(requestManager: RequestManager(baseAddress: ""), jsonManager: JsonManager())
        self.init(networkmanager : networkmanager)
    }
    
    func factureToMainView() -> AnyPublisher<SideDishesCollection, Error> {
        return networkmanager.get(type: SideDishesCollection.self, url: URL(string: "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/best")!)
    }
    
    func factureToDetailView() {
        //
    }
    
}
