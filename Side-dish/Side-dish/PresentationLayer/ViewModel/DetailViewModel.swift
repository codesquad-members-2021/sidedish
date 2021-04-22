//
//  DetailViewModel.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/22.
//

import Foundation
import Combine

class DetailViewModel {
    
    private let sideDishUseCase: SideDishProtocol
    private var sideDishManager: SideDishManager
    private var cancellable = Set<AnyCancellable>()
    
    @Published var itemDetails: ItemData = ItemData()
    @Published var errorMessage = ""
    
    init(sideDishUseCase: SideDishProtocol) {
        self.sideDishUseCase = sideDishUseCase
        self.sideDishManager = SideDishManager()
//        request(with: "HDF73")
    }
    
    func request(with detailHash: String) {
        sideDishUseCase.requestItemDetails(detailHash: detailHash)
            .sink { (complete) in
                if case .failure(let error) = complete {
                    self.errorMessage = error.message
                    print(error)
                }
            } receiveValue: { (detail) in
                print(detail)
                self.itemDetails = detail.data
            }.store(in: &cancellable)
    }

    func didFetchDetails(completion: @escaping ((ItemData) -> ())) {
        $itemDetails
            .sink { (detail) in
                // needs improvement
                completion(detail)
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
