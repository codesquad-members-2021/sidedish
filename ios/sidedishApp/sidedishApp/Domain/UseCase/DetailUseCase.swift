//
//  DetailUseCase.swift
//  DetailApp
//
//  Created by zombietux on 2021/04/20.
//

import Foundation
import Combine

class DetailUseCase: DetailUseCasePort {
    private var detailNetworkManager: DetailNetworkManagerProtocol
    
    init(detailNetworkManager: DetailNetworkManagerProtocol) {
        self.detailNetworkManager = detailNetworkManager
    }
    
    convenience init() {
        let detailNetworkManager = DetailNetworkManager()
        self.init(detailNetworkManager: detailNetworkManager)
    }
    
    func getItem(path category: String, path id: Int) -> AnyPublisher<Detail, Error> {
        return detailNetworkManager.getItem(path: category, path: id)
    }
}


