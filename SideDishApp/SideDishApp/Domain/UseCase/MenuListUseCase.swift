//
//  MenuListUseCase.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/21.
//

import Foundation
import Combine

class MenuListUseCase {
    
    private let sideDishNetworkManager = SideDishNetworkManager()
    
    func showMenu() -> AnyPublisher<[Dishes], NetworkError> {
        return sideDishNetworkManager.getSideDishes()
    }
}
