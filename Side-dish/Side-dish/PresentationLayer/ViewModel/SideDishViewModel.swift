//
//  ViewModel.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/20.
//

import Foundation
import Combine

class SideDishViewModel {
    
    private let sideDishUseCase: SideDishProtocol
    private var sideDishManager: SideDishManager
    private var cancellable = Set<AnyCancellable>()
    
    @Published var errorMessage = ""
    
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
        NotificationCenter.default
            .publisher(for: SideDishManager.NotificationName.updatePath)
            .map{ ($0.userInfo?["path"] as! Menu) }
            .sink { path in
                completion((path,
                            self.sideDishManager.getSideDishes(with: path)))
            }.store(in: &cancellable)
    }
    
    func didFetchHeaderRowCount(with path: Menu) -> Int {
        return sideDishManager.getRowCount(path: path)
    }
    
    func didFetchItemDatailHash(with path: Menu, sequence: Int) -> String {
        return sideDishManager.getItemDetailHash(with: path, sequence: sequence)
    }
    
    func except(completion: @escaping ((String) ->())) {
        $errorMessage
            .dropFirst()
            .sink { (message) in
            completion(message)
        }.store(in: &cancellable)
    }
}

