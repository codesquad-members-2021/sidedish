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
    private var cancellable = Set<AnyCancellable>()
    
    @Published var itemDetails: ItemData?
    @Published var errorMessage = ""
    
    init(sideDishUseCase: SideDishProtocol) {
        self.sideDishUseCase = sideDishUseCase
    }
    
    func request(with detailHash: String) {
        sideDishUseCase.requestItemDetails(detailHash: detailHash)
            .sink { (complete) in
                if case .failure(let error) = complete {
                    self.errorMessage = error.message
                }
            } receiveValue: { (detail) in
                self.itemDetails = detail.data
            }.store(in: &cancellable)
    }
    
    func didFetchDetails(completion: @escaping ((ItemData) -> ())) {
        $itemDetails
            .receive(on: DispatchQueue.main)
            .sink { (detail) in
                guard let detail = detail else {
                    return
                }
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
