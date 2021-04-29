//
//  ViewModel.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/20.
//

import Foundation
import Combine

protocol SideDishViewModelProcotol {
    func didFetchSideDishes(completion: @escaping ((Menu,[Item])) -> ())
    func didFetchHeaderRowCount(with path: Menu) -> Int
    func didFetchItemDatailHash(with path: Menu, sequence: Int) -> Item?
    func except() -> AnyPublisher<String, Never>
}

class SideDishViewModel: SideDishViewModelProcotol {
        
    private let sideDishUseCase: SideDishProtocol
    private var sideDishManager: SideDishManager
    private var cancellable = Set<AnyCancellable>()
    
    @Published private var errorMessage = ""
    
    init(sideDishUseCase: SideDishProtocol) {
        self.sideDishUseCase = sideDishUseCase
        self.sideDishManager = SideDishManager()
        request()
    }
    
    private func request() {
        Menu.allCases.forEach { (path) in
            sideDishUseCase.requestSideDishes(path: path)
                .sink { (complete) in
                    if case .failure(let error) = complete {
                        self.errorMessage = error.message
                    }
                } receiveValue: { (SideDishes) in
                    self.sideDishManager.insert(path: path, items: SideDishes.body)
                }.store(in: &cancellable)
        }
    }

    func didFetchSideDishes(completion: @escaping ((Menu,[Item])) -> ()) {
        self.sideDishManager.arriveMenuType.sink { (menu) in
            completion((menu,
                        self.sideDishManager.getSideDishes(with: menu)))
        }.store(in: &cancellable)
    }
    
    func didFetchHeaderRowCount(with path: Menu) -> Int {
        return sideDishManager.getRowCount(path: path)
    }
    
    func didFetchItemDatailHash(with path: Menu, sequence: Int) -> Item? {
        return sideDishManager.getItemDetailHash(with: path, sequence: sequence)
    }
    
    func except() -> AnyPublisher<String, Never> {
        return $errorMessage
            .dropFirst()
            .eraseToAnyPublisher()
    }
}

