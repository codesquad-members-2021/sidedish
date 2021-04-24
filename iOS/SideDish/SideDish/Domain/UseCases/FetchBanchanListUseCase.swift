//
//  FetchBanchanListUseCase.swift
//  SideDish
//
//  Created by 지북 on 2021/04/21.
//

import Foundation
import Combine

struct FetchBanchanListUseCase {
    private var subscriptions = Set<AnyCancellable>()
    
    mutating func fetchBanchanList(network: NetworkRequest, baseURL: String, section: String, completion: @escaping ([Banchan]?) -> Void) {
        let url = baseURL+section

        network.request(with: url, dataType: BanchanListDTO.self, httpMethod: .get)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { result in
                switch result {
                case .failure(let error):
                    print(error)
                case .finished:
                    break
                }
            }, receiveValue: { banchanListDTO in
                completion(banchanListDTO.toDomain())
            })
            .store(in: &subscriptions)
    }
}
