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
    private var sidedishManager : SideDishManager
    private var cancellable = Set<AnyCancellable>()
    
    @Published var errorMessage = ""
    
    init(sideDishUseCase: SideDishProtocol) {
        self.sideDishUseCase = sideDishUseCase
        self.sidedishManager = SideDishManager()
        request()
    }
    
    private func request() {
        Path.allCases.forEach { (path) in
            sideDishUseCase.execute(path: path)
                .sink { (complete) in
                    if case .failure(let error) = complete {
                        self.errorMessage = error.message
                    }
                } receiveValue: { (SideDishes) in
                    self.sidedishManager.insert(path: path, items: SideDishes.body)
                }.store(in: &cancellable)
        }
    }

    func didFetchSideDishes(completion: @escaping ((Path,[Item])) -> ()) {
        NotificationCenter.default
            .publisher(for: SideDishManager.NotificationName.updatePath)
            .map{ ($0.userInfo?["path"] as! Path) }
            .sink { path in
                completion((path,
                            self.sidedishManager.getSideDishes(with: path)))
            }.store(in: &cancellable)
    }
    
    func except(completion: @escaping ((String) ->())) {
        $errorMessage
            .dropFirst()
            .sink { (message) in
            completion(message)
        }.store(in: &cancellable)
    }
}
