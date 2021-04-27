//
//  AppFlowCoordinator.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/27.
//

import UIKit

class AppFlowCoordinator {
    private var navigationController: UINavigationController
    private let appDIContainer: AppDIContainer
    
    init(navigationController: UINavigationController, appDIContainer: AppDIContainer) {
        self.navigationController = navigationController
        self.appDIContainer = appDIContainer
    }
    
    func start() {
        let banchanSceneDIContainer = appDIContainer.makeBanchanSceneDIContainer()
        let flow = banchanSceneDIContainer.makeBanchanSceneFlowCoordinator(navigationController: navigationController)
        flow.start()
    }
}
