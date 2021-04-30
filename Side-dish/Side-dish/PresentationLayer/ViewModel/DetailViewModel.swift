//
//  DetailViewModel.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/22.
//

import Foundation
import Combine

protocol DetailViewModelProtocol {
    func didFetchDetails() -> AnyPublisher<ItemData, Never>
    func except() -> AnyPublisher<String, Never>
    func orderSideDish(title: String, sPrice: String)
    func successOrderBind() -> AnyPublisher<Void, Never>
}

final class DetailViewModel: DetailViewModelProtocol {
    
    private let sideDishUseCase: SideDishProtocol
    private var cancellable = Set<AnyCancellable>()
    private var orderSuccessSubject = PassthroughSubject<Void, Never>()
    
    @Published private var itemDetails: ItemData?
    @Published private var errorMessage = ""
    
    init(sideDishUseCase: SideDishProtocol, hash: String) {
        self.sideDishUseCase = sideDishUseCase
        request(with: hash)
    }
    
    private func request(with detailHash: String) {
        sideDishUseCase.requestItemDetails(detailHash: detailHash)
            .sink { (complete) in
                if case .failure(let error) = complete {
                    self.errorMessage = error.message
                }
            } receiveValue: { (detail) in
                self.itemDetails = detail.data
            }.store(in: &cancellable)
    }
    
    func didFetchDetails() -> AnyPublisher<ItemData, Never> {
        return $itemDetails
            .receive(on: DispatchQueue.main)
            .compactMap { $0 }
            .eraseToAnyPublisher()
    }
    
    func except() -> AnyPublisher<String, Never> {
        return $errorMessage
            .dropFirst()
            .eraseToAnyPublisher()
    }
    
    func orderSideDish(title: String, sPrice: String)  {
        let data = Encoder.endcode(title: title, sPrice: sPrice)
        sideDishUseCase.requestOrder(body: data).sink { (complete) in
            if case .failure(let error) = complete {
                self.errorMessage = error.message
            }
        } receiveValue: { (_) in
            self.orderSuccessSubject.send()
        }.store(in: &cancellable)
    }
    
    func successOrderBind() -> AnyPublisher<Void, Never> {
        return orderSuccessSubject.eraseToAnyPublisher()
    }
}
