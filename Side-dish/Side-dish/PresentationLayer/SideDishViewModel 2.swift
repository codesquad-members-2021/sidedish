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
    }
    
    func bind(handler: @escaping (Result<[Item], NetworkError>) -> ()) {
        sideDishUseCase.execute(path: .main).sink { (complete) in
            if case .failure(let error) = complete {
                handler(.failure(error))
            }
        } receiveValue: { (SideDishes) in
            self.item = SideDishes.body
            handler(.success(SideDishes.body))
        }.store(in: &cancellable)
    }
    
    func test(completion: @escaping ([Item]) -> ()){
        $item.sink { (item) in
            completion(item)
        }.store(in: &cancellable)
    }
}
