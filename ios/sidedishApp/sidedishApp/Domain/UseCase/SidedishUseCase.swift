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
    
    func getCategory(path: String) -> AnyPublisher<Category, Error> {
        return sidedishNetworkManager.getCategory(path: path)
    }
}


