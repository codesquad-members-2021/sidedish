//
//  BanchanListRepository.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/27.
//


import Combine

protocol BanchanListRepository {
    func fetchBanchanList(section: Section, completion: @escaping ([Banchan]?) -> Void)
}

class DefaultBanchanListRepository: BanchanListRepository {
    private let network: NetworkService
    private var subscriptions = Set<AnyCancellable>()
    
    init(network: NetworkService) {
        self.network = network
    }
    
    func fetchBanchanList(section: Section, completion: @escaping ([Banchan]?) -> Void) {
        let endPoint = BanchanAPIEndpoint(path: section.path(), httpMethod: .get)
        network.request(with: endPoint, dataType: BanchanListDTO.self)
            .sink(receiveCompletion: {result in
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
