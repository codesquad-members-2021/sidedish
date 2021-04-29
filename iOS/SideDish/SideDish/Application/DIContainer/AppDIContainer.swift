//
//  AppDIContainer.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/27.
//

import Foundation

class AppDIContainer {
    lazy var apiNetworkService = DefaultNetworkSerivce()
    
    func makeBanchanSceneDIContainer() -> BanchanSceneDIContainer {
        let dependencies = BanchanSceneDIContainer.Dependencies.init(apiNetworkService: apiNetworkService)
        return BanchanSceneDIContainer(dependencies: dependencies)
    }
}
