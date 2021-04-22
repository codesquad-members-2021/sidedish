//
//  UseCase.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/20.
//

import Foundation
import Combine

protocol SideDishProtocol {
    func execute(path: Path) -> AnyPublisher<SideDishes, NetworkError>
    func execute2(detailHash: String) -> AnyPublisher<ItemDetails, NetworkError>
}

class SideDishUseCase: SideDishProtocol {
    
    private let networkManager: NetworkManageable
    
    init(networkManager : NetworkManageable) {
        self.networkManager = networkManager
    }
    
    func execute(path: Path) -> AnyPublisher<SideDishes, NetworkError> {
        return networkManager.requestResource(path: path, method: .get)
    }
    
    func execute2(detailHash: String) -> AnyPublisher<ItemDetails, NetworkError> {
        return networkManager.requestDetails(detailHash: detailHash, method: .get)
    }
}
