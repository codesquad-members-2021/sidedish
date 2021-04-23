//
//  NetworkManager.swift
//  sidedish
//
//  Created by Song on 2021/04/21.
//

import Foundation
import Combine

class NetworkManager : NetworkProtocol {
    
    private let requestManager: RequestManager
    
    init(baseAddress: String){
        self.requestManager = RequestManager(baseAddress: baseAddress)
    }
    
    func get<T>(type: T.Type, endPoint: EndPoint) -> AnyPublisher<T, Error> where T: Decodable {
        let urlRequest = requestManager.create(endPoint: endPoint, body: nil, requestType: .get)
        
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
