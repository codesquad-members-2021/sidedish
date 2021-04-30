//
//  UseCase.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/20.
//

import Foundation
import Combine

protocol SideDishProtocol {
    func requestSideDishes(path: Menu) -> AnyPublisher<SideDishes, NetworkError>
    func requestItemDetails(detailHash: String) -> AnyPublisher<ItemDetails, NetworkError>
    func requestOrder(body: Data) -> AnyPublisher<Int, NetworkError>
}

final class SideDishUseCase: SideDishProtocol {
    
    private let networkManager: NetworkManageable
    
    init(networkManager : NetworkManageable) {
        self.networkManager = networkManager
    }
    
    func requestSideDishes(path: Menu) -> AnyPublisher<SideDishes, NetworkError> {
        return networkManager.requestResource(path: path, method: .get, deocdeType: SideDishes.self)
    }
    
    func requestItemDetails(detailHash: String) -> AnyPublisher<ItemDetails, NetworkError> {
        return networkManager.requestResource(path: detailHash, method: .get, deocdeType: ItemDetails.self)
    }
    
    func requestOrder(body: Data) -> AnyPublisher<Int, NetworkError> {
        return networkManager.requestOrder(method: .post, body: body)
    }
}
