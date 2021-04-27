//
//  BanchanSceneDIContainer.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/27.
//

import UIKit

class BanchanSceneDIContainer: BanchanSceneFlowCoordinatorDependencies {
    struct Dependencies {
        let apiNetworkService: NetworkService
    }
    
    private let dependencies: Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
    
    // MARK: - Repositories
    private func makeBanchanListRepository() -> BanchanListRepository {
        return DefaultBanchanListRepository(network: dependencies.apiNetworkService)
    }

    // MARK: - Use Cases
    private func makeFetchBanchanListUseCase() -> FetchBanchanListUseCase{
        return DefaultFetchBanchanListUseCase(banchanListRepository: makeBanchanListRepository())
    }
    
    // MARK: - ViewModel
    private func makeBanchanListViewModel() -> BanchanListViewModel {
        return BanchanListViewModel(fetchBanchanListUseCase: makeFetchBanchanListUseCase())
    }
    
    // MARK: - ViewController
    internal func makeBanchanListViewController() -> BanchanListViewController {
        return BanchanListViewController.create(with: makeBanchanListViewModel())
    }
    
    // MARK: - Flow Coordinator
    func makeBanchanSceneFlowCoordinator(navigationController: UINavigationController) -> BanchanSceneFlowCoordinator {
        return BanchanSceneFlowCoordinator(navigationController: navigationController, dependencies: self)
    }
}

