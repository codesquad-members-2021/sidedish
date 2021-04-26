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
    
    static func createDI2() -> DetailViewModel {
        let networkManage = NetworkManager()
        let useCase = SideDishUseCase(networkManager: networkManage)
        let viewModel = DetailViewModel(sideDishUseCase: useCase)
        return viewModel
    }
    
    static let shared = DIContainer()
    private var dependenies = [String : Any]()
    
    func register<T>(_ dependency: T) {
        let key = String(describing: type(of: T.self))
        dependenies[key] = dependency
    }
    
    func resolve<T>() -> T {
        let key = String(describing: type(of: T.self))
        let dependency = dependenies[key]
        return dependency as! T
    }
}

