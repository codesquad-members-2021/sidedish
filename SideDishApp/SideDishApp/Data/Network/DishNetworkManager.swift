//
//  SideDishNetworkManager.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/21.
//

import Foundation
import Combine

protocol DishNetworkManageable {
    func getDishes(path: String) -> AnyPublisher<[Dishes], NetworkError>
}

class DishNetworkManager: DishNetworkManageable {
    private var networkManager: NetworkManageable
    
    init(networkManager: NetworkManageable) {
        self.networkManager = networkManager
    }
    
    convenience init() {
        let networkManager = NetworkManager()
        self.init(networkManager: networkManager)
    }
    
    func getDishes(path: String) -> AnyPublisher<[Dishes], NetworkError> {
        let url = Endpoint.get(path: path).url

        return networkManager.get(url: url)
    }
}
