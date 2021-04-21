//
//  SidedishUseCase.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/20.
//

import Foundation
import Combine

class SidedishUseCase: SidedishUseCasePort {
    private var sidedishNetworkManager: SidedishNetworkManagerProtocol
    
    init(sidedishNetworkManager: SidedishNetworkManagerProtocol) {
        self.sidedishNetworkManager = sidedishNetworkManager
    }
    
    convenience init() {
        let sidedishNetworkManager = SidedishNetworkManager()
        self.init(sidedishNetworkManager: sidedishNetworkManager)
    }
    
    func getMain() -> AnyPublisher<Main, Error> {
        return sidedishNetworkManager.getMain()
    }
    
    func getSoup() -> AnyPublisher<Soup, Error> {
        return sidedishNetworkManager.getSoup()
    }
    
    func getSide() -> AnyPublisher<Side, Error> {
        return sidedishNetworkManager.getSide()
    }
}


