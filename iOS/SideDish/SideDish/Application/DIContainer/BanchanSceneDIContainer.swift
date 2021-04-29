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
    private func makeBanchanListViewModel(action: BanchanListViewModelAction) -> BanchanListViewModel {
        return BanchanListViewModel(fetchBanchanListUseCase: makeFetchBanchanListUseCase(), action: action)
    }
    
    // MARK: - ViewController
    internal func makeBanchanListViewController(action: BanchanListViewModelAction) -> BanchanListViewController {
        return BanchanListViewController.create(with: makeBanchanListViewModel(action: action))
    }
    
    // MARK: - Flow Coordinator
    func makeBanchanSceneFlowCoordinator(navigationController: UINavigationController) -> BanchanSceneFlowCoordinator {
        return BanchanSceneFlowCoordinator(navigationController: navigationController, dependencies: self)
    }
}

extension BanchanSceneDIContainer {
    private func makeBanchanDetailRepository() -> BanchanDetailRepository {
        return DefaultBanchanDetailRepository(network: dependencies.apiNetworkService)
    }

    // MARK: - Use Cases
    private func makeFetchBanchanDetailUseCase() -> FetchBanchanDetailUseCase{
        return DefaultFetchBanchanDetailUseCase(banchanDetailRepository: makeBanchanDetailRepository())
    }
    
    // MARK: - ViewModel
    private func makeBanchanDetailViewModel(hash: Int, action: BanchanDetailViewModelAction) -> BanchanDetailViewModel {
        return BanchanDetailViewModel(hash: hash, fetchBanchanDetailUseCase: makeFetchBanchanDetailUseCase(), action: action)
    }
    
    // MARK: - ViewController
    internal func makeBanchanDetailViewController(hash: Int, action: BanchanDetailViewModelAction) -> BanchanDetailViewController {
        return BanchanDetailViewController.create(with: makeBanchanDetailViewModel(hash: hash, action: action))
    }
}

