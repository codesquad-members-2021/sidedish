//
//  SidedishNetworkManager.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/20.
//

import Foundation
import Combine

protocol SidedishNetworkManagerProtocol: class {
    func getCategory(path: String) -> AnyPublisher<Category, Error>
}

class SidedishNetworkManager: SidedishNetworkManagerProtocol {
    private var networkManager: HttpMethodProtocol!
    
    init(networkManager: HttpMethodProtocol) {
        self.networkManager = networkManager
    }
    
    convenience init() {
        let networkManager = NetworkManager()
        self.init(networkManager: networkManager)
    }
    
    func getCategory(path: String) -> AnyPublisher<Category, Error> {
        let endpoint = Endpoint.getCategory(path: path)
        return networkManager.get(type: Category.self, url: endpoint.url)
    }
}
