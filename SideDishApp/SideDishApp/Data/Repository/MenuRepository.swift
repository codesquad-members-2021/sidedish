//
//  MenuRepository.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/26.
//

import Foundation
import Combine

class MenuRepository {
    
    private let dishNetworkManager: DishNetworkManageable
    private let cache = CoreDataMenuResponseStorage()

    init(dishNetworkManager: DishNetworkManageable) {
        self.dishNetworkManager = dishNetworkManager
    }
    
    convenience init() {
        let networkManaer = DishNetworkManager()
        self.init(dishNetworkManager: networkManaer)
    }
    
    func fetchMenuList(path: String) -> AnyPublisher<[Dishes], NetworkError> {
        dishNetworkManager.getDishes(path: path)
    }
}
