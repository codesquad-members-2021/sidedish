//
//  SidedishNetworkManager.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/20.
//

import Foundation
import Combine

protocol SidedishNetworkManagerProtocol: class {
    func getMain() -> AnyPublisher<Main, Error>
    func getSoup() -> AnyPublisher<Soup, Error>
    func getSide() -> AnyPublisher<Side, Error>
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
    
    func getMain() -> AnyPublisher<Main, Error> {
        let endpoint = Endpoint.get(path: "main")
        return networkManager.get(type: Main.self, url: endpoint.url)
    }
    
    func getSoup() -> AnyPublisher<Soup, Error> {
        let endpoint = Endpoint.get(path: "soup")
        return networkManager.get(type: Soup.self, url: endpoint.url)
    }
    
    func getSide() -> AnyPublisher<Side, Error> {
        let endpoint = Endpoint.get(path: "side")
        return networkManager.get(type: Side.self, url: endpoint.url)
    }
}
