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
    private var cancellable = Set<AnyCancellable>()
    
    @Published var errorMessage = ""
    @Published var item: [Item] = []
    
    init(sideDishUseCase: SideDishProtocol) {
        self.sideDishUseCase = sideDishUseCase
        request()
    }
    
    private func request() {
        sideDishUseCase.execute(path: .main).sink { (complete) in
            if case .failure(let error) = complete {
                self.errorMessage = error.message
            }
        } receiveValue: { (SideDishes) in
            self.item = SideDishes.body
        }.store(in: &cancellable)
    }
    
    func test(completion: @escaping ([Item]) -> ()){
        $item
            .dropFirst()
            .sink { (item) in
            completion(item)
        }.store(in: &cancellable)
    }
    
    func occur(completion: @escaping ((String) ->())) {
        $errorMessage
            .dropFirst()
            .sink { (message) in
            completion(message)
        }.store(in: &cancellable)
    }
}
