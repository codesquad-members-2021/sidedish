//
//  BanchanDetailRepository.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/27.
//

import Combine

protocol BanchanDetailRepository {
    func fetchBanchanDetail(hash: Int, completion: @escaping (BanchanDetail?) -> Void)
}

class DefaultBanchanDetailRepository: BanchanDetailRepository {
    private let network: NetworkService
    private var subscriptions = Set<AnyCancellable>()
    
    init(network: NetworkService) {
        self.network = network
    }
    
    func fetchBanchanDetail(hash: Int, completion: @escaping (BanchanDetail?) -> Void) {
        let endPoint = BanchanAPIEndpoint(path: "\(hash)", httpMethod: .get)
        network.request(with: endPoint, dataType: BanchanDetailDTO.self)
            .sink(receiveCompletion: {result in
                switch result {
                case .failure(let error):
                    print(error)
                case .finished:
                    break
                }
            }, receiveValue: { banchanDetailDTO in
                completion(banchanDetailDTO.toDomain())
            })
            .store(in: &subscriptions)
    }
}
