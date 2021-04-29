//
//  ViewControllerFactory.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/29.
//

import UIKit

class UsecaseGenerator {
    static func create() -> SideDishProtocol {
        let networkManage = NetworkManager()
        let useCase = SideDishUseCase(networkManager: networkManage)
        return useCase
    }
}
