//
//  NetworkManager.swift
//  sidedish
//
//  Created by Song on 2021/04/21.
//

import Foundation
import Combine

class NetworkManager: NetworkProtocol {
    
    private let requestManager: RequestManager
    
    init(baseAddress: String) {
        self.requestManager = RequestManager(baseAddress: baseAddress)
    }
    
    func get<T: Decodable>(type: T.Type, endPoint: String) -> AnyPublisher<T, Error> {
        let urlRequest = requestManager.create(endPoint: endPoint, body: nil, requestType: .get)
        
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
