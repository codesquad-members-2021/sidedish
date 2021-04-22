//
//  MenuListUseCase.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/21.
//

import Foundation
import Combine

protocol MenuListUseCasePort {
    func showMenu(food path: String) -> AnyPublisher<[Dishes], NetworkError>
}

class MenuListUseCase: MenuListUseCasePort {
    
    private let sideDishNetworkManager = DishNetworkManager()
    
    func showMenu(food path: String) -> AnyPublisher<[Dishes], NetworkError> {
        return sideDishNetworkManager.getDishes(path: path)
    }
}
