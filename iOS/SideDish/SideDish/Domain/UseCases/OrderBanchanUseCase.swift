//
//  OrderBanchanUseCase.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/28.
//

import Combine
import UIKit

protocol OrderBanchanUseCase {
    func execute(hash: Int, quantity: Int, completion: @escaping (Int?, NetworkError?) -> Void)
}

class DefaultOrderBanchanUseCase: OrderBanchanUseCase {
    
    private var network: NetworkService
    private var subscriptions = Set<AnyCancellable>()
    init(network: NetworkService) {
        self.network = network
    }
    
    func execute(hash: Int, quantity: Int, completion: @escaping (Int?, NetworkError?) -> Void) {
        let endPoint = OrderBanchanAPIEndPoint(path: "\(hash)", httpMethod: .post)
        let data = body(quantity: quantity)
        network.post(with: endPoint, data: data)
            .sink(receiveCompletion: { result in
                switch result {
                case .failure(let error):
                    completion(nil, error)
                case .finished:
                    break
                }
            }, receiveValue: { Result in
                completion(Result, nil)
            })
            .store(in: &subscriptions)
    }
}


struct body: Encodable {
    var quantity: Int
}
