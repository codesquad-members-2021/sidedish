//
//  DIContainer.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/20.
//

import Foundation

class DIContainer {
    static func createDI() -> SideDishViewModel {
        let networkManage = NetworkManager()
        let useCase = SideDishUseCase(networkManager: networkManage)
        let viewModel = SideDishViewModel(sideDishUseCase: useCase)
        return viewModel
    }
}
