//
//  BanchanSceneFlowCoordinator.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/27.
//

import UIKit

protocol BanchanSceneFlowCoordinatorDependencies {
    func makeBanchanListViewController() -> BanchanListViewController
}

class BanchanSceneFlowCoordinator {
    
    private weak var navigationController: UINavigationController?
    private var banchanListVC: BanchanListViewController?
    private let dependencies: BanchanSceneFlowCoordinatorDependencies
    
    init(navigationController: UINavigationController, dependencies: BanchanSceneFlowCoordinatorDependencies) {
        self.navigationController = navigationController
        self.dependencies = dependencies
    }
    
    func start() {
        let vc = dependencies.makeBanchanListViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        self.banchanListVC = vc
    }
}
